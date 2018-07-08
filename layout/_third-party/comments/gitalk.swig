{% if page.comments && theme.gitalk.enable %}
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
  <script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
  <script type="text/javascript">
    var gitalk = new Gitalk({
      clientID: '{{ theme.gitalk.clientID }}',
      clietnSecret: '{{ theme.gitalk.clientSecret }}',
      repo: '{{ theme.gitalk.repo }}',
      owner: '{{ theme.gitalk.owner }}',
      admin: '{{ theme.gitalk.admin }}',
      id: window.location.pathname,
      language: '{{ theme.gitalk.language }}', 
    });
    gitalk.render('gitalk-container');
  </script>
{% endif %}