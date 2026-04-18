document.getElementById('registroForm').addEventListener('submit', function(e) {
    e.preventDefault();

    const cuit = document.getElementById('cuit').value;
    const pass = document.getElementById('password').value;
    const confirmPass = document.getElementById('confirmPassword').value;

    // Validación de CUIT (solo longitud básica)
    if (cuit.length !== 11 || isNaN(cuit)) {
        alert("El CUIT debe ser un número de 11 dígitos.");
        return;
    }

    // Validación de Contraseñas
    if (pass !== confirmPass) {
        alert("Las contraseñas no coinciden.");
        return;
    }

    if (pass.length < 6) {
        alert("La contraseña debe tener al menos 6 caracteres.");
        return;
    }

    alert("¡Registro exitoso! Sus datos han sido enviados para aprobación administrativa.");
    // Aquí se enviaría el objeto a la base de datos vía API
});