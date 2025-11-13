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

            setTimeout(()=> location.href='dashboard.html', 900);

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
});


