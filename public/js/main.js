$(document).ready(()=> {
    $('form').on('submit', e => {
        e.preventDefault();
        let child = $('#child').val();

        $.ajax({
            type: "GET",
            dataType: 'json',
            url: '/register?child='+child, // http://127.0.0.1:8000/register?child=12
            success: res => {
                dataProcess(res);
            }
        });

    });
    function dataProcess(res) {
        if (res.status=='danger') {
            alert(res.message);
        } else {

        }
    }
});


// once data is available after submission, then callback modal function to display child details~!