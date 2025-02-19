$(document).ready(function() {
        initializers();

        $('#personType').click(function() {
                $('#personPointer').css('display', 'inherit');
                $('#companyPointer').css('display', 'none');

                $('#personGroup').css('display', 'inherit');
                $('#companyGroup').css('display', 'none');
        });

        $('#companyType').click(function() {
                $('#personPointer').css('display', 'none');
                $('#companyPointer').css('display', 'inherit');

                $('#personGroup').css('display', 'none');
                $('#companyGroup').css('display', 'inherit');
        });
});

function initializers() {
        $('#personPointer').css('display', 'inherit');
        $('#companyGroup').css('display', 'none');
}
