<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" data-color-mode="auto" data-light-theme="light" data-dark-theme="dark"
    data-a11y-animated-images="system" data-a11y-link-underlines="false" data-turbo-loaded="">

<head>
    <style type="text/css">
        .turbo-progress-bar {
            position: fixed;
            display: block;
            top: 0;
            left: 0;
            height: 3px;
            background: #0076ff;
            z-index: 2147483647;
            transition:
                width 300ms ease-out,
                opacity 150ms 150ms ease-in;
            transform: translate3d(0, 0, 0);
        }
    </style>
    <meta charset="utf-8">
    <link rel="dns-prefetch" href="https://github.githubassets.com">
    <link rel="dns-prefetch" href="https://avatars.githubusercontent.com">
    <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
    <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">
    <link rel="preconnect" href="https://github.githubassets.com" crossorigin="">
    <link rel="preconnect" href="https://avatars.githubusercontent.com">



    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/light-8cafbcbd78f4.css">
    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/dark-31dc14e38457.css">
    <link data-color-theme="dark_dimmed" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/dark_dimmed-71414d661fe2.css">
    <link data-color-theme="dark_high_contrast" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/dark_high_contrast-ba96c7f1d660.css">
    <link data-color-theme="dark_colorblind" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/dark_colorblind-7471c22cdb6a.css">
    <link data-color-theme="light_colorblind" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/light_colorblind-80180bed15ed.css">
    <link data-color-theme="light_high_contrast" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/light_high_contrast-e89b9cdecb75.css">
    <link data-color-theme="light_tritanopia" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/light_tritanopia-77f15e9154df.css">
    <link data-color-theme="dark_tritanopia" crossorigin="anonymous" media="all" rel="stylesheet"
        data-href="https://github.githubassets.com/assets/dark_tritanopia-f598f8dd18ae.css">

    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/primer-primitives-fb1d51d1ef66.css">
    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/primer-8f43f7721dc7.css">
    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/global-1c4d2d83ff46.css">
    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/github-422d7f955a64.css">




    <script type="application/json"
        id="client-env">{"locale":"en","featureFlags":["failbot_handle_non_errors","fix_react_title","geojson_azure_maps","image_metric_tracking","remove_react_base_styles","z_index_isolation","turbo_experiment_risky","use_scroll_restoration","sample_network_conn_type"]}</script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/wp-runtime-91f7adb97800.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_dompurify_dist_purify_js-64d590970fa6.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_stacktrace-parser_dist_stack-trace-parser_esm_js-node_modules_github_bro-a4c183-18bf85b8e9f4.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/ui_packages_soft-nav_soft-nav_ts-df17d5597d8f.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/environment-509b58e05b9f.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_selector-observer_dist_index_esm_js-2646a2c533e3.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_primer_behaviors_dist_esm_focus-zone_js-d55308df5023.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_relative-time-element_dist_index_js-99e288659d4f.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_fzy_js_index_js-node_modules_github_markdown-toolbar-element_dist_index_js-d2119e75298d.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_delegated-events_dist_index_js-node_modules_github_auto-complete-element-5b3870-9b38c0812424.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_filter-input-element_dist_index_js-node_modules_github_remote-inp-8873b7-5771678648e0.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_file-attachment-element_dist_index_js-node_modules_primer_view-co-bdc901-b176cf1841aa.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/github-elements-1ff8b48eef26.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/element-registry-212f1c631951.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_lit-html_lit-html_js-9d9fe1859ce5.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_hydro-analytics-client_dist_analytics-client_js-node_modules_gith-f3aee1-fd3c22610e40.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_morphdom_dist_morphdom-esm_js-b1fdd7158cf0.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_mini-throttle_dist_index_js-node_modules_github_alive-client_dist-bf5aa2-4aefce0fc3c8.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_turbo_dist_turbo_es2017-esm_js-1f4793023fcd.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_remote-form_dist_index_js-node_modules_scroll-anchoring_dist_scro-52dc4b-e1e33bfc0b7e.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_color-convert_index_js-35b3ae68c408.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_paste-markdown_dist_index_esm_js-node_modules_github_quote-select-7a8e2b-f036384374ea.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_details-dialog_ts-app_assets_modules_github_fetch_ts-9ca164041015.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_updatable-content_ts-ui_packages_hydro-analytics_hydro-analytics_ts-e4da304b75e7.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_onfocus_ts-app_assets_modules_github_sticky-scroll-into-view_ts-7ce0c9d975f3.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_behaviors_task-list_ts-app_assets_modules_github_sso_ts-ui_packages-7d50ad-9491f2be61ee.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_behaviors_ajax-error_ts-app_assets_modules_github_behaviors_include-2e2258-f67f752a4d27.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_behaviors_commenting_edit_ts-app_assets_modules_github_behaviors_ht-83c235-f22ac6b94445.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_blob-anchor_ts-app_assets_modules_github_filter-sort_ts-app_assets_-c96432-b9f980134541.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/behaviors-37b9ec77d673.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_delegated-events_dist_index_js-node_modules_github_catalyst_lib_index_js-06ff531-fe0b8ccc90a5.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/notifications-global-f57687007bfc.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_primer_behaviors_dist_esm_dimensions_js-node_modules_delegated-events_di-94a48b-f9e5146929c3.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_virtualized-list_es_index_js-node_modules_github_template-parts_lib_index_js-677582870bfd.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_remote-form_dist_index_js-node_modules_github_catalyst_lib_index_-7a61950-652988b53689.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_filter-input-element_dist_index_js-node_modules_github_mini-throt-40d40d-6e72ee4b2241.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_filter-input_ts-e5d99d30ff21.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_ref-selector_ts-0e2b12902d39.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/app_assets_modules_github_onfocus_ts-app_assets_modules_github_settings_actions-policy-form_t-884e05-69798a92c184.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/settings-fd7f5bf2aa9b.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/vendors-node_modules_github_remote-form_dist_index_js-node_modules_github_memoize_dist_esm_in-687f35-d131f0b6de8e.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/sessions-2638decb9ee5.js"></script>
    <script crossorigin="anonymous" defer="defer" type="application/javascript"
        src="https://github.githubassets.com/assets/signup-9197d41c14b1.js"></script>


    <title>Sign in to Insider0piyush</title>



    <meta name="route-pattern" content="/login(.:format)">


    <meta name="current-catalog-service-hash"
        content="701273d4944fb23919c770da2da3f33b6da9ed8e668f7249090e3e9f429343b5">


    <meta name="request-id" content="582E:3BDF6E:96E258:B0D3E1:64DC586B" data-pjax-transient="true">
    <meta name="html-safe-nonce" content="24c5c93177e642d43f5cf7fbdd43b3220b4b33e70e217eaf450d2555139924bb"
        data-pjax-transient="true">
    <meta name="visitor-payload"
        content="eyJyZWZlcnJlciI6Imh0dHBzOi8vZ2l0aHViLmNvbS8iLCJyZXF1ZXN0X2lkIjoiNTgyRTozQkRGNkU6OTZFMjU4OkIwRDNFMTo2NERDNTg2QiIsInZpc2l0b3JfaWQiOiI5NTY4MzA1Njk2MjU0NDcwMjUiLCJyZWdpb25fZWRnZSI6ImNlbnRyYWxpbmRpYSIsInJlZ2lvbl9yZW5kZXIiOiJjZW50cmFsaW5kaWEifQ=="
        data-pjax-transient="true">
    <meta name="visitor-hmac" content="f20c5216556454d917a86864a7bfd9bd4fec5d3a61fcd889f2663b4420105883"
        data-pjax-transient="true">




    <meta name="github-keyboard-shortcuts" content="" data-turbo-transient="true">


    <meta name="selected-link" value="/login" data-turbo-transient="">
    <link rel="assets" href="https://github.githubassets.com/">

    <meta name="google-site-verification" content="c1kuD-K2HIVF635lypcsWPoD4kilo5-jA_wBFyT4uMY">
    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-site-verification" content="GXs5KoUUkNCoaAZn7wPN-t01Pywp9M3sEjnt_3_ZWPc">
    <meta name="google-site-verification" content="Apib7-x98H0j5cPqHWwSMm6dNU4GmODRoqxLiDzdx9I">

    <meta name="octolytics-url" content="https://collector.github.com/github/collect">

    <meta name="analytics-location-query-strip" content="true" data-turbo-transient="true">








    <meta name="user-login" content="">



    <meta name="viewport" content="width=device-width">

    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <meta property="fb:app_id" content="1401488693436528">

    <meta property="og:url" content="https://github.com">
    <meta property="og:site_name" content="GitHub">
    <meta property="og:title" content="Build software better, together">
    <meta property="og:image" content="https://github.githubassets.com/images/modules/open_graph/github-logo.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="1200">
    <meta property="og:image" content="https://github.githubassets.com/images/modules/open_graph/github-mark.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="620">
    <meta property="og:image" content="https://github.githubassets.com/images/modules/open_graph/github-octocat.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="620">

    <meta property="twitter:site" content="github">
    <meta property="twitter:site:id" content="13334762">
    <meta property="twitter:creator" content="github">
    <meta property="twitter:creator:id" content="13334762">
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:title" content="Insider0piyush">
    <meta property="twitter:description"
        content="GitHub is where people build software. More than 100 million people use GitHub to discover, fork, and contribute to over 330 million projects.">
    <meta property="twitter:image:src"
        content="https://github.githubassets.com/images/modules/open_graph/github-logo.png">
    <meta property="twitter:image:width" content="1200">
    <meta property="twitter:image:height" content="1200">



    <meta name="hostname" content="insider0piyush.carrd.co">



    <meta name="expected-hostname" content="insider0piyush.carrd.co">


    <meta http-equiv="x-pjax-version" content="da854484070d380098ee3ea00a54b29097ae993ef85995d04aec2f76f06e6b8f"
        data-turbo-track="reload">
    <meta http-equiv="x-pjax-csp-version" content="d578db686ab50f6f79f53006983acd122464dfeec8531d38fe12d520f9cbf1bc"
        data-turbo-track="reload">
    <meta http-equiv="x-pjax-css-version" content="71901750b0af8f599d0963b35bb45590b1194540d7280dd4069868d7798de3a9"
        data-turbo-track="reload">
    <meta http-equiv="x-pjax-js-version" content="402c7cb566fa5136b813819a0e76eee355a8c4461392b8494628934fa56dd938"
        data-turbo-track="reload">

    <meta name="turbo-cache-control" content="no-preview" data-turbo-transient="">

    <link crossorigin="anonymous" media="all" rel="stylesheet"
        href="https://github.githubassets.com/assets/github-422d7f955a64.css">



    <link rel="canonical" href="insider0piyush.carrd.co" data-turbo-transient="">
    <meta name="turbo-body-classes" content="logged-out env-production page-responsive session-authentication">


    <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

    <meta name="browser-optimizely-client-errors-url"
        content="https://api.github.com/_private/browser/optimizely_client/errors">

    <link rel="mask-icon" href="https://github.githubassets.com/pinned-octocat.svg" color="#000000">
    <link rel="alternate icon" class="js-site-favicon" type="image/png"
        href="https://github.githubassets.com/favicons/favicon.png">
    <link rel="icon" class="js-site-favicon" type="image/svg+xml"
        href="https://github.githubassets.com/favicons/favicon.svg">

    <meta name="theme-color" content="#1e2327">
    <meta name="color-scheme" content="light dark">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    <link rel="manifest" href="/manifest.json" crossorigin="use-credentials">

</head>

<body class="logged-out env-production page-responsive session-authentication intent-mouse"
    style="word-wrap: break-word;">
    <div data-turbo-body="" class="logged-out env-production page-responsive session-authentication"
        style="word-wrap: break-word;">



        <div class="position-relative js-header-wrapper ">
            <a href="#start-of-content"
                class="px-2 py-4 color-bg-accent-emphasis color-fg-on-emphasis show-on-focus js-skip-to-content">Skip to
                content</a>
            <span data-view-component="true" class="progress-pjax-loader Progress position-fixed width-full">
                <span style="width: 0%;" data-view-component="true"
                    class="Progress-item progress-pjax-loader-bar left-0 top-0 color-bg-accent-emphasis"></span>
            </span>





            <div class="header header-logged-out width-full pt-5 pb-4" role="banner">
                <div class="container clearfix width-full text-center">
                    <a class="header-logo" href="insider0piyush.carrd.co" aria-label="Homepage"
                        data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
                        <svg height="48" viewBox="0 -960 960 960" width="48">
                            <path
                                d="M860-313v-252L508-375q-14 8-29 7.5t-29-8.5L88-574q-8-5-11.5-11.525t-3.5-14.5Q73-608 76.5-614.5T88-626l362-198q6.868-4 14.118-6T479-832q7.632 0 14.882 2T508-824l396 215q7.619 3.857 11.81 11.186Q920-590.486 920-582v269q0 12.75-8.675 21.375-8.676 8.625-21.5 8.625-12.825 0-21.325-8.625T860-313ZM450-136 220-262q-14-8-22.5-22.25T189-315v-174l261 143q13.655 8 28.828 8Q494-338 508-346l261-143v174q0 16.5-8.5 30.75T738-262L508-136q-6.868 4-14.118 6T479-128q-7.632 0-14.882-2T450-136Z" />
                        </svg>
                    </a>
                </div>
            </div>


            <div hidden="hidden" data-view-component="true" class="js-stale-session-flash flash flash-warn mb-3">

                <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                    data-view-component="true" class="octicon octicon-alert">
                    <path
                        d="M6.457 1.047c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0 1 14.082 15H1.918a1.75 1.75 0 0 1-1.543-2.575Zm1.763.707a.25.25 0 0 0-.44 0L1.698 13.132a.25.25 0 0 0 .22.368h12.164a.25.25 0 0 0 .22-.368Zm.53 3.996v2.5a.75.75 0 0 1-1.5 0v-2.5a.75.75 0 0 1 1.5 0ZM9 11a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z">
                    </path>
                </svg>
                <span class="js-stale-session-flash-signed-in" hidden="">You signed in with another tab or window. <a
                        class="Link--inTextBlock" href="">Reload</a> to refresh your session.</span>
                <span class="js-stale-session-flash-signed-out" hidden="">You signed out in another tab or window. <a
                        class="Link--inTextBlock" href="">Reload</a> to refresh your session.</span>
                <span class="js-stale-session-flash-switched" hidden="">You switched accounts on another tab or window.
                    <a class="Link--inTextBlock" href="">Reload</a> to refresh your session.</span>

                <button class="flash-close js-flash-close" type="button" aria-label="Close">
                    <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                        data-view-component="true" class="octicon octicon-x">
                        <path
                            d="M3.72 3.72a.75.75 0 0 1 1.06 0L8 6.94l3.22-3.22a.749.749 0 0 1 1.275.326.749.749 0 0 1-.215.734L9.06 8l3.22 3.22a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215L8 9.06l-3.22 3.22a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042L6.94 8 3.72 4.78a.75.75 0 0 1 0-1.06Z">
                        </path>
                    </svg>
                </button>


            </div>
        </div>

        <div id="start-of-content" class="show-on-focus"></div>










        <include-fragment class="js-notification-shelf-include-fragment"
            data-base-src="https://github.com/notifications/beta/shelf"></include-fragment>






        <div class="application-main " data-commit-hovercards-enabled="" data-discussion-hovercards-enabled=""
            data-issue-and-pr-hovercards-enabled="">
            <main>


                <div class="auth-form px-3" id="login">


                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                    <div class="auth-form-header p-0">
                        <h1>Sign in to insider0piyush</h1>
                    </div>


                    <div id="js-flash-container" data-turbo-replace="">





                        <template class="js-flash-template">

                            <div class="flash flash-full   {{ className }}">
                                <div class="px-2">
                                    <button autofocus="" class="flash-close js-flash-close" type="button"
                                        aria-label="Dismiss this message">
                                        <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                                            data-view-component="true" class="octicon octicon-x">
                                            <path
                                                d="M3.72 3.72a.75.75 0 0 1 1.06 0L8 6.94l3.22-3.22a.749.749 0 0 1 1.275.326.749.749 0 0 1-.215.734L9.06 8l3.22 3.22a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215L8 9.06l-3.22 3.22a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042L6.94 8 3.72 4.78a.75.75 0 0 1 0-1.06Z">
                                            </path>
                                        </svg>
                                    </button>
                                    <div aria-atomic="true" role="alert" class="js-flash-alert">

                                        <div>{{ message }}</div>

                                    </div>
                                </div>
                            </div>
                        </template>
                    </div>


                    <div class="flash js-transform-notice" hidden="">
                        <button class="flash-close js-flash-close" type="button" aria-label="Dismiss this message">
                            <svg aria-label="Dismiss" role="img" height="16" viewBox="0 0 16 16" version="1.1"
                                width="16" data-view-component="true" class="octicon octicon-x">
                                <path
                                    d="M3.72 3.72a.75.75 0 0 1 1.06 0L8 6.94l3.22-3.22a.749.749 0 0 1 1.275.326.749.749 0 0 1-.215.734L9.06 8l3.22 3.22a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215L8 9.06l-3.22 3.22a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042L6.94 8 3.72 4.78a.75.75 0 0 1 0-1.06Z">
                                </path>
                            </svg>
                        </button>
                    </div>

                    <div class="auth-form-body mt-3">

                        <!-- '"` --><!-- </textarea></xmp> -->
                        <form data-turbo="false" runat ="server" accept-charset="UTF-8"><input
                                type="hidden" data-csrf="true" name="authenticity_token"
                                value="zP1WCk/yKZIhRXmRFkaLCaIN/sZmUl6E6qKFdpeD3r4kXvtcYLicpx5c9eKcjc1hKbF4BOBAcN1Keno2sUoZWA==">
                            <label for="login_field">
                                Username
                            </label>

                            <asp:TextBox type="text" runat="server" ID="username"
                                style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;"
                                class="form-control input-block js-login-field" autocapitalize="off" autocorrect="off"
                                autocomplete="username" autofocus="autofocus" />

                            <div class="position-relative">
                                <label for="password">
                                    Password
                                </label>

                                <asp:TextBox type="password" runat="server" ID="password"
                                    style="width:256px;padding-top:7px;padding-bottom:7px;padding-inline-start:9px;"
                                    class="form-control form-control input-block js-password-field"
                                    autocomplete="current-password" />

                                <input type="hidden" name="webauthn-conditional" value="undefined">
                                <input type="hidden" class="js-support" name="javascript-support" value="true">
                                <input type="hidden" class="js-webauthn-support" name="webauthn-support"
                                    value="supported">
                                <input type="hidden" class="js-webauthn-iuvpaa-support" name="webauthn-iuvpaa-support"
                                    value="supported">
                                <input type="hidden" name="return_to" id="return_to" value="https://github.com/login"
                                    autocomplete="off" class="form-control">
                                <input type="hidden" name="allow_signup" id="allow_signup" autocomplete="off"
                                    class="form-control">
                                <input type="hidden" name="client_id" id="client_id" autocomplete="off"
                                    class="form-control">
                                <input type="hidden" name="integration" id="integration" autocomplete="off"
                                    class="form-control">
                                <input class="form-control" type="text" name="required_field_feb3" hidden="hidden">
                                <input class="form-control" type="hidden" name="timestamp" value="1692162155087">
                                <input class="form-control" type="hidden" name="timestamp_secret"
                                    value="dc738785931384bd9f73b0cb0154c9e11b085e029960e252ca770d48f39b5830">


                                <asp:Button runat="server" ID="btnLogin"
                                    class="btn btn-primary btn-block js-sign-in-button" data-disable-with="Signing in…"
                                    data-signin-label="Sign in" data-sso-label="Sign in with your identity provider"
                                    development="false" Text="Sign In" />

                                <a id="btnCreateNewAccount" class="label-link position-absolute top-0 right-0" tabindex="0" href="password_reset.aspx">Forgot
                                    password?</a>
                            </div>
                        </form>


                    </div>


                    <p class="login-callout mt-3">
                        New to insider0piyush?
                        <a data-ga-click="Sign in, switch to sign up"
                            data-hydro-click="{&quot;event_type&quot;:&quot;authentication.click&quot;,&quot;payload&quot;:{&quot;location_in_page&quot;:&quot;sign in switch to sign up&quot;,&quot;repository_id&quot;:null,&quot;auth_type&quot;:&quot;SIGN_UP&quot;,&quot;originating_url&quot;:&quot;https://github.com/login&quot;,&quot;user_id&quot;:null}}"
                            data-hydro-click-hmac="72d062e79bb6ab076a3b88b32943286ea51894183bd812a5038d00013946f239"
                            href="#">Create an account</a>.
                    </p>

                </div>

            </main>
        </div>

        <div class="footer container-lg p-responsive py-6 mt-6 f6" role="contentinfo">
            <ul class="list-style-none d-flex flex-justify-center">
                <li><a class="Link--secondary" data-ga-click="Footer, go to contact, text:contact"
                        href="insider0piyush-support.carrd.co">Contact insider0piyush Support</a></li>
            </ul>
        </div>



        <div id="ajax-error-message" class="ajax-error-message flash flash-error" hidden="">
            <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16" data-view-component="true"
                class="octicon octicon-alert">
                <path
                    d="M6.457 1.047c.659-1.234 2.427-1.234 3.086 0l6.082 11.378A1.75 1.75 0 0 1 14.082 15H1.918a1.75 1.75 0 0 1-1.543-2.575Zm1.763.707a.25.25 0 0 0-.44 0L1.698 13.132a.25.25 0 0 0 .22.368h12.164a.25.25 0 0 0 .22-.368Zm.53 3.996v2.5a.75.75 0 0 1-1.5 0v-2.5a.75.75 0 0 1 1.5 0ZM9 11a1 1 0 1 1-2 0 1 1 0 0 1 2 0Z">
                </path>
            </svg>
            <button type="button" class="flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
                <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                    data-view-component="true" class="octicon octicon-x">
                    <path
                        d="M3.72 3.72a.75.75 0 0 1 1.06 0L8 6.94l3.22-3.22a.749.749 0 0 1 1.275.326.749.749 0 0 1-.215.734L9.06 8l3.22 3.22a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215L8 9.06l-3.22 3.22a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042L6.94 8 3.72 4.78a.75.75 0 0 1 0-1.06Z">
                    </path>
                </svg>
            </button>
            You can’t perform that action at this time.
        </div>

        <template id="site-details-dialog">
            <details class="details-reset details-overlay details-overlay-dark lh-default color-fg-default hx_rsm"
                open="">
                <summary role="button" aria-label="Close dialog"></summary>
                <details-dialog
                    class="Box Box--overlay d-flex flex-column anim-fade-in fast hx_rsm-dialog hx_rsm-modal">
                    <button class="Box-btn-octicon m-0 btn-octicon position-absolute right-0 top-0" type="button"
                        aria-label="Close dialog" data-close-dialog="">
                        <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                            data-view-component="true" class="octicon octicon-x">
                            <path
                                d="M3.72 3.72a.75.75 0 0 1 1.06 0L8 6.94l3.22-3.22a.749.749 0 0 1 1.275.326.749.749 0 0 1-.215.734L9.06 8l3.22 3.22a.749.749 0 0 1-.326 1.275.749.749 0 0 1-.734-.215L8 9.06l-3.22 3.22a.751.751 0 0 1-1.042-.018.751.751 0 0 1-.018-1.042L6.94 8 3.72 4.78a.75.75 0 0 1 0-1.06Z">
                            </path>
                        </svg>
                    </button>
                    <div class="octocat-spinner my-6 js-details-dialog-spinner"></div>
                </details-dialog>
            </details>
        </template>

        <div class="Popover js-hovercard-content position-absolute" style="display: none; outline: none;" tabindex="0">
            <div class="Popover-message Popover-message--bottom-left Popover-message--large Box color-shadow-large"
                style="width:360px;"></div>
        </div>

        <template id="snippet-clipboard-copy-button">
            <div class="zeroclipboard-container position-absolute right-0 top-0">
                <clipboard-copy aria-label="Copy"
                    class="ClipboardButton btn js-clipboard-copy m-2 p-0 tooltipped-no-delay"
                    data-copy-feedback="Copied!" data-tooltip-direction="w">
                    <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                        data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon m-2">
                        <path
                            d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z">
                        </path>
                        <path
                            d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z">
                        </path>
                    </svg>
                    <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                        data-view-component="true"
                        class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none m-2">
                        <path
                            d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z">
                        </path>
                    </svg>
                </clipboard-copy>
            </div>
        </template>
        <template id="snippet-clipboard-copy-button-unpositioned">
            <div class="zeroclipboard-container">
                <clipboard-copy aria-label="Copy"
                    class="ClipboardButton btn btn-invisible js-clipboard-copy m-2 p-0 tooltipped-no-delay d-flex flex-justify-center flex-items-center"
                    data-copy-feedback="Copied!" data-tooltip-direction="w">
                    <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                        data-view-component="true" class="octicon octicon-copy js-clipboard-copy-icon">
                        <path
                            d="M0 6.75C0 5.784.784 5 1.75 5h1.5a.75.75 0 0 1 0 1.5h-1.5a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-1.5a.75.75 0 0 1 1.5 0v1.5A1.75 1.75 0 0 1 9.25 16h-7.5A1.75 1.75 0 0 1 0 14.25Z">
                        </path>
                        <path
                            d="M5 1.75C5 .784 5.784 0 6.75 0h7.5C15.216 0 16 .784 16 1.75v7.5A1.75 1.75 0 0 1 14.25 11h-7.5A1.75 1.75 0 0 1 5 9.25Zm1.75-.25a.25.25 0 0 0-.25.25v7.5c0 .138.112.25.25.25h7.5a.25.25 0 0 0 .25-.25v-7.5a.25.25 0 0 0-.25-.25Z">
                        </path>
                    </svg>
                    <svg aria-hidden="true" height="16" viewBox="0 0 16 16" version="1.1" width="16"
                        data-view-component="true"
                        class="octicon octicon-check js-clipboard-check-icon color-fg-success d-none">
                        <path
                            d="M13.78 4.22a.75.75 0 0 1 0 1.06l-7.25 7.25a.75.75 0 0 1-1.06 0L2.22 9.28a.751.751 0 0 1 .018-1.042.751.751 0 0 1 1.042-.018L6 10.94l6.72-6.72a.75.75 0 0 1 1.06 0Z">
                        </path>
                    </svg>
                </clipboard-copy>
            </div>
        </template>




    </div>

    <div id="js-global-screen-reader-notice" class="sr-only" aria-live="polite"></div>



</body>
</html>
