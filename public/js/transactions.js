// File: public/js/transactions.js

// Setup axios
axios.defaults.headers.common['X-CSRF-TOKEN'] = document.querySelector('meta[name="csrf-token"]').content;

// File upload handling
let selectedFile = null;

document.getElementById('fileInput').addEventListener('change', function(e) {
    selectedFile = e.target.files[0];
    if (selectedFile) {
        const fileInfo = document.getElementById('fileInfo');
        fileInfo.innerHTML = `
            <p><strong>File dipilih:</strong> ${selectedFile.name}</p>
            <p><strong>Ukuran:</strong> ${formatFileSize(selectedFile.size)}</p>
            <p><strong>Tipe:</strong> ${selectedFile.type}</p>
        `;
        document.getElementById('uploadBtn').disabled = false;
    }
});

// Upload file
async function uploadFile() {
    if (!selectedFile) {
        alert('Silakan pilih file terlebih dahulu');
        return;
    }

    const formData = new FormData();
    formData.append('file', selectedFile);

    const uploadBtn = document.getElementById('uploadBtn');
    const uploadProgress = document.getElementById('uploadProgress');
    const uploadResult = document.getElementById('uploadResult');
    const progressBar = uploadProgress.querySelector('.progress-bar');

    uploadBtn.disabled = true;
    uploadProgress.style.display = 'block';
    uploadResult.innerHTML = '';

    try {
        progressBar.style.width = '50%';

        const response = await axios.post('/transactions/upload', formData, {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
        });

        progressBar.style.width = '100%';

        setTimeout(() => {
            uploadProgress.style.display = 'none';
            uploadResult.className = 'upload-result success';
            uploadResult.innerHTML = `
                <h4>✅ Upload Berhasil!</h4>
                <p>${response.data.message}</p>
                <p>Total data diimport: <strong>${response.data.imported}</strong></p>
                ${response.data.errors.length > 0 ? 
                    `<details>
                        <summary>Lihat error (${response.data.errors.length})</summary>
                        <ul>${response.data.errors.map(err => `<li>${err}</li>`).join('')}</ul>
                    </details>` : ''
                }
            `;

            // Reset form
            document.getElementById('fileInput').value = '';
            document.getElementById('fileInfo').innerHTML = '';
            selectedFile = null;
            uploadBtn.disabled = true;

            // Reload page after 3 seconds
            setTimeout(() => {
                window.location.href = '/';
            }, 3000);

        }, 500);

    } catch (error) {
        uploadProgress.style.display = 'none';
        uploadResult.className = 'upload-result error';
        uploadResult.innerHTML = `
            <h4>❌ Upload Gagal!</h4>
            <p>${error.response?.data?.message || 'Terjadi kesalahan saat upload file'}</p>
        `;
        uploadBtn.disabled = false;
    }
}

// Manual transaction form
document.getElementById('transactionForm').addEventListener('submit', async function(e) {
    e.preventDefault();

    const formData = new FormData(this);
    const data = Object.fromEntries(formData.entries());

    try {
        const response = await axios.post('/transactions', data);

        alert('✅ ' + response.data.message);
        this.reset();
        
        // Redirect to dashboard
        setTimeout(() => {
            window.location.href = '/';
        }, 1500);

    } catch (error) {
        alert('❌ Gagal menyimpan transaksi: ' + (error.response?.data?.message || 'Terjadi kesalahan'));
    }
});

// Helper: Format file size
function formatFileSize(bytes) {
    if (bytes === 0) return '0 Bytes';
    const k = 1024;
    const sizes = ['Bytes', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return Math.round(bytes / Math.pow(k, i) * 100) / 100 + ' ' + sizes[i];
}