michaloo/ngx_ps-proxy
---

Nginx + pagespeed proxy. Put it between you web application and the users for assets optimization.

Please refer to `crane.yml` for container run definition, needed environmental variables and linking possibilites.

If using [crane](https://github.com/michaelsauter/crane) you can execute following command in root dir (APP_DOMAIN envvar may need customization):

`crane lift proxy nginx`

This will bring two containers, `nginx` with `tests/` directory served, there are bootstrap examples installed there, and `proxy` based on `michaloo/ngx_ps-proxy` image. `nginx` is linked as a `app` to the `proxy` container. This is enough to see the results:

`echo http://$(docker port proxy 80)/examples/theme/`
