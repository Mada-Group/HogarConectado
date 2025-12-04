document.addEventListener('DOMContentLoaded', ()=>{
    // Registration
    const regForm = document.getElementById('form-register');

    if(regForm){
        regForm.addEventListener('submit', (e)=>{
            e.preventDefault();

            const username = document.getElementById('reg-username').value.trim();

            const email = document.getElementById('reg-email').value.trim();

            const pass = document.getElementById('reg-pass').value;

            const pass2 = document.getElementById('reg-pass2').value;

            const msg = document.getElementById('reg-msg');

            if(!username || !email || !pass) { msg.innerText='Completa todos los campos';
                return;
            }
            if(pass !== pass2){ msg.innerText='Las contraseñas no coinciden';
                return;
            }
            const users = JSON.parse(localStorage.getItem('hc_users')||'{}');

            if(users[email]){ msg.innerText='El correo ya está registrado';
                return;
            }
            users[email] = {username,email,pass};

            localStorage.setItem('hc_users', JSON.stringify(users));

            localStorage.setItem('hc_current', email);

            msg.style.color='black';

            msg.innerText='Registro exitoso. Redirigiendo...';

            setTimeout(()=> location.href='login.html', 900);

        });

    }

    // Login
    const loginForm = document.getElementById('form-login');

    if(loginForm){
        loginForm.addEventListener('submit', (e)=>{
            e.preventDefault();

            const email = document.getElementById('login-email').value.trim();

            const pass = document.getElementById('login-pass').value;

            const msg = document.getElementById('login-msg');

            const users = JSON.parse(localStorage.getItem('hc_users')||'{}');

            if(users[email] && users[email].pass === pass){
                localStorage.setItem('hc_current', email);

                msg.style.color='black';

                msg.innerText='Inicio correcto. Redirigiendo...';

                setTimeout(()=> location.href='dashboard.html', 700);

            } else {
                msg.innerText='Correo o contraseña incorrectos.';

            }
        });

    }

    // Update header user link
    const current = localStorage.getItem('hc_current');

    const userLink = document.getElementById('user-link');

    if(userLink){
        if(current){
            const users = JSON.parse(localStorage.getItem('hc_users')||'{}');

            const name = users[current] ? users[current].username : current;

            userLink.innerText = name + ' (Salir)';

            userLink.href = '#';

            userLink.addEventListener('click', (e)=>{
                e.preventDefault();

                localStorage.removeItem('hc_current');

                location.href = 'index.html';

            });

        }
    }

    //Guardar cambios
    const ajustesForm = document.getElementById('form-ajustes');

    if(ajustesForm){
        const currentEmail = localStorage.getItem('hc_current');
        const users = JSON.parse(localStorage.getItem('hc_users') || '{}');
        const msg = document.getElementById('ajustes-msg');

        if(currentEmail && users[currentEmail]){
            const userData = users[currentEmail];
            document.getElementById('ajustes-username').value = userData.username;
            document.getElementById('ajustes-email').value = userData.email;
        }

        ajustesForm.addEventListener('submit', (e) => {
            e.preventDefault(); // Evita que la página se recargue
            const newName = document.getElementById('ajustes-username').value.trim();
            const newPass = document.getElementById('ajustes-pass').value;
            if(!newName){
                if(msg) {
                    msg.style.color = 'red';
                    msg.innerText = 'El nombre no puede estar vacío';
                }
                return;
            }
            if(users[currentEmail]){
                users[currentEmail].username = newName;
                if(newPass.length > 0){
                    if(newPass.length < 6){
                        if(msg) {
                            msg.style.color = 'red';
                            msg.innerText = 'La contraseña debe tener 6 caracteres';
                        }
                        return;
                    }
                    users[currentEmail].pass = newPass;
                }
                localStorage.setItem('hc_users', JSON.stringify(users));

                if(msg){
                    msg.style.color = 'green';
                    msg.innerText = 'Cambios guardados correctamente.';

                    setTimeout(() => msg.innerText = '', 3000);
                }

                const userLink = document.getElementById('user-link');
                if(userLink) userLink.innerText = newName + ' (Salir)';
                document.getElementById('ajustes-pass').value = '';
            }
        });
    }
});

