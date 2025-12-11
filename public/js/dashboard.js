// File: public/js/dashboard.js (Part 1)

// Global variables
let charts = {};
let currentData = null;

// Initialize dashboard
document.addEventListener('DOMContentLoaded', function() {
    loadChartData();
});

// Apply filter
function applyFilter() {
    loadChartData();
}

// Reset filter
function resetFilter() {
    document.getElementById('startDate').value = getDefaultStartDate();
    document.getElementById('endDate').value = getDefaultEndDate();
    loadChartData();
}

// Get default dates
function getDefaultStartDate() {
    const date = new Date();
    date.setMonth(date.getMonth() - 6);
    return date.toISOString().split('T')[0];
}

function getDefaultEndDate() {
    return new Date().toISOString().split('T')[0];
}

// Load chart data
async function loadChartData() {
    const startDate = document.getElementById('startDate').value;
    const endDate = document.getElementById('endDate').value;
    
    showLoading();
    
    try {
        const response = await axios.get('/api/chart-data', {
            params: { start_date: startDate, end_date: endDate }
        });
        
        currentData = response.data;
        updateSummary(currentData.summary);
        renderAllCharts(currentData);
    } catch (error) {
        console.error('Error loading chart data:', error);
        alert('Gagal memuat data. Silakan coba lagi.');
    } finally {
        hideLoading();
    }
}

// Update summary cards
function updateSummary(summary) {
    document.getElementById('totalSales').textContent = formatCurrency(summary.total_sales);
    document.getElementById('totalTransactions').textContent = formatNumber(summary.total_transactions);
    document.getElementById('avgTransaction').textContent = formatCurrency(summary.average_transaction);
}

// Render all charts
function renderAllCharts(data) {
    renderSalesByMonthChart(data.salesByMonth);
    renderSalesByCategoryChart(data.salesByCategory);
    renderTopProductsChart(data.topProducts);
    renderPaymentMethodsChart(data.paymentMethods);
    renderTransactionStatusChart(data.transactionStatus);
    renderRFMSegmentChart(data.rfmAnalysis);
    renderTrendAnalysisChart(data.trendAnalysis);
    renderMovingAverageChart(data.trendAnalysis);
    renderDailyDistributionChart(data.trendAnalysis);
    renderCategoryPerformanceChart(data.salesByCategory);
}

// Chart 1: Sales by Month
function renderSalesByMonthChart(data) {
    const ctx = document.getElementById('salesByMonthChart');
    destroyChart('salesByMonth');
    
    charts.salesByMonth = new Chart(ctx, {
        type: 'line',
        data: {
            labels: data.map(item => item.month),
            datasets: [{
                label: 'Total Penjualan',
                data: data.map(item => item.total_sales),
                borderColor: '#4f46e5',
                backgroundColor: 'rgba(79, 70, 229, 0.1)',
                tension: 0.4,
                fill: true
            }]
        },
        options: getChartOptions('Rp')
    });
}

// Chart 2: Sales by Category
function renderSalesByCategoryChart(data) {
    const ctx = document.getElementById('salesByCategoryChart');
    destroyChart('salesByCategory');
    
    charts.salesByCategory = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: data.map(item => item.category),
            datasets: [{
                data: data.map(item => item.total_sales),
                backgroundColor: [
                    '#4f46e5', '#3b82f6', '#10b981', 
                    '#f59e0b', '#ef4444', '#8b5cf6'
                ]
            }]
        },
        options: {
            ...getChartOptions(),
            plugins: {
                legend: { position: 'bottom' }
            }
        }
    });
}

// Chart 3: Top Products
function renderTopProductsChart(data) {
    const ctx = document.getElementById('topProductsChart');
    destroyChart('topProducts');
    
    charts.topProducts = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: data.map(item => item.product_name),
            datasets: [{
                label: 'Jumlah Terjual',
                data: data.map(item => item.total_quantity),
                backgroundColor: '#10b981'
            }]
        },
        options: {
            ...getChartOptions(),
            indexAxis: 'y'
        }
    });
}

// Chart 4: Payment Methods
function renderPaymentMethodsChart(data) {
    const ctx = document.getElementById('paymentMethodsChart');
    destroyChart('paymentMethods');
    
    charts.paymentMethods = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: data.map(item => item.payment_method),
            datasets: [{
                data: data.map(item => item.count),
                backgroundColor: [
                    '#4f46e5', '#3b82f6', '#10b981', 
                    '#f59e0b', '#ef4444'
                ]
            }]
        },
        options: {
            ...getChartOptions(),
            plugins: {
                legend: { position: 'bottom' }
            }
        }
    });
}

// Chart 5: Transaction Status
function renderTransactionStatusChart(data) {
    const ctx = document.getElementById('transactionStatusChart');
    destroyChart('transactionStatus');
    
    charts.transactionStatus = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: data.map(item => item.status),
            datasets: [{
                label: 'Jumlah Transaksi',
                data: data.map(item => item.count),
                backgroundColor: ['#10b981', '#f59e0b', '#ef4444']
            }]
        },
        options: getChartOptions()
    });
}

// File: public/js/dashboard.js (Part 2)

// Chart 6: RFM Segment
function renderRFMSegmentChart(data) {
    const ctx = document.getElementById('rfmSegmentChart');
    destroyChart('rfmSegment');
    
    const labels = Object.keys(data);
    const values = Object.values(data);
    
    charts.rfmSegment = new Chart(ctx, {
        type: 'polarArea',
        data: {
            labels: labels,
            datasets: [{
                data: values,
                backgroundColor: [
                    'rgba(79, 70, 229, 0.7)',
                    'rgba(59, 130, 246, 0.7)',
                    'rgba(16, 185, 129, 0.7)',
                    'rgba(245, 158, 11, 0.7)'
                ]
            }]
        },
        options: {
            ...getChartOptions(),
            plugins: {
                legend: { position: 'bottom' }
            }
        }
    });
}

// Chart 7: Trend Analysis
function renderTrendAnalysisChart(data) {
    const ctx = document.getElementById('trendAnalysisChart');
    destroyChart('trendAnalysis');
    
    charts.trendAnalysis = new Chart(ctx, {
        type: 'line',
        data: {
            labels: data.daily_sales.map(item => item.transaction_date),
            datasets: [{
                label: 'Penjualan Harian',
                data: data.daily_sales.map(item => item.total_sales),
                borderColor: '#3b82f6',
                backgroundColor: 'rgba(59, 130, 246, 0.1)',
                tension: 0.4,
                fill: true
            }]
        },
        options: getChartOptions('Rp')
    });
}

// Chart 8: Moving Average
function renderMovingAverageChart(data) {
    const ctx = document.getElementById('movingAverageChart');
    destroyChart('movingAverage');
    
    charts.movingAverage = new Chart(ctx, {
        type: 'line',
        data: {
            labels: data.moving_average.map(item => item.date),
            datasets: [{
                label: 'Moving Average 7 Hari',
                data: data.moving_average.map(item => item.value),
                borderColor: '#8b5cf6',
                backgroundColor: 'rgba(139, 92, 246, 0.1)',
                tension: 0.4,
                fill: true
            }]
        },
        options: getChartOptions('Rp')
    });
}

// Chart 9: Daily Distribution
function renderDailyDistributionChart(data) {
    const ctx = document.getElementById('dailyDistributionChart');
    destroyChart('dailyDistribution');
    
    charts.dailyDistribution = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: data.daily_sales.map(item => item.transaction_date),
            datasets: [{
                label: 'Jumlah Transaksi',
                data: data.daily_sales.map(item => item.total_sales),
                backgroundColor: '#f59e0b'
            }]
        },
        options: getChartOptions('Rp')
    });
}

// Chart 10: Category Performance
function renderCategoryPerformanceChart(data) {
    const ctx = document.getElementById('categoryPerformanceChart');
    destroyChart('categoryPerformance');
    
    charts.categoryPerformance = new Chart(ctx, {
        type: 'radar',
        data: {
            labels: data.map(item => item.category),
            datasets: [{
                label: 'Performa Kategori',
                data: data.map(item => item.total_sales),
                borderColor: '#4f46e5',
                backgroundColor: 'rgba(79, 70, 229, 0.2)'
            }]
        },
        options: {
            ...getChartOptions(),
            scales: {
                r: {
                    ticks: { color: '#94a3b8' },
                    grid: { color: '#334155' }
                }
            }
        }
    });
}

// Helper: Get chart options
function getChartOptions(prefix = '') {
    return {
        responsive: true,
        maintainAspectRatio: true,
        plugins: {
            legend: {
                labels: { color: '#f1f5f9' }
            },
            tooltip: {
                callbacks: {
                    label: function(context) {
                        let label = context.dataset.label || '';
                        if (label) label += ': ';
                        if (prefix === 'Rp') {
                            label += formatCurrency(context.parsed.y || context.parsed);
                        } else {
                            label += formatNumber(context.parsed.y || context.parsed);
                        }
                        return label;
                    }
                }
            }
        },
        scales: {
            y: {
                ticks: {
                    color: '#94a3b8',
                    callback: function(value) {
                        return prefix === 'Rp' ? formatCurrency(value) : formatNumber(value);
                    }
                },
                grid: { color: '#334155' }
            },
            x: {
                ticks: { color: '#94a3b8' },
                grid: { color: '#334155' }
            }
        }
    };
}

// Helper: Destroy chart
function destroyChart(name) {
    if (charts[name]) {
        charts[name].destroy();
    }
}

// Helper: Format currency
function formatCurrency(value) {
    return new Intl.NumberFormat('id-ID', {
        style: 'currency',
        currency: 'IDR',
        minimumFractionDigits: 0
    }).format(value);
}

// Helper: Format number
function formatNumber(value) {
    return new Intl.NumberFormat('id-ID').format(value);
}

// Helper: Show loading
function showLoading() {
    document.getElementById('loadingOverlay').classList.add('active');
}

// Helper: Hide loading
function hideLoading() {
    document.getElementById('loadingOverlay').classList.remove('active');
}