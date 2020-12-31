    <footer>
        <article>
            <section class="copyright">
                <p>Copyright © 2020 Example Inc. All rights reserved.</p>
            </section>

            <section class="webDeveloper">
                <p>Web developer || Fermín Medina </p>
            </section>

            <section class="links">
                <a class="itemFooter" id="home" href="menu">Menu</a>
                {if (isset($smarty.session.user))}
                    <a class="itemFooter" id="admin" href="login">Admin</a>
                {else}
                    <a class="itemFooter" id="admin" href="admin">Admin</a>
                {/if}
                <a class="itemFooter" id="about">Redes</a>
            </section>

        </article>
    </footer>