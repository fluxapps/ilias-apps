FROM fluxms/flux-ilias-php:7 AS ilias

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/AttendanceList/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/AttendanceList
RUN /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/AttendanceList/vendor/srag/dic/bin/ilias7_core_apply_ilctrl_patch.sh
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/AttendanceListCron/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Cron/CronHook/AttendanceListCron

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/Certificate/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/Certificate
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/CertificateCron/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Cron/CronHook/CertificateCron

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/ChangeLog/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/EventHandling/EventHook/ChangeLog

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/CompetenceRecommender/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/CompetenceRecommender

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/DhbwTraining/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/DhbwTraining

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/LearningObjectiveSuggestions/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Cron/CronHook/LearningObjectiveSuggestions
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/LearningObjectiveSuggestionsUI/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/LearningObjectiveSuggestionsUI

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/LiveVoting/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/LiveVoting

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/MultiAssign/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/MultiAssign

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/OnlyOffice/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/OnlyOffice

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/Panopto/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/Panopto
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/PanoptoPageComponent/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/COPage/PageComponent/PanoptoPageComponent

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/ParticipationCertificate/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/ParticipationCertificate

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/SrGeogebra/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/COPage/PageComponent/SrGeogebra

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/SrLpReport/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/SrLpReport

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/UdfEditor/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/UdfEditor

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/UserDefaults/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/EventHandling/EventHook/UserDefaults

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/ViMP/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/ViMP
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/VimpPageComponent/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/COPage/PageComponent/VimpPageComponent
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/ViMPCron/archive/refs/heads/main.tar.gz /var/www/html/Customizing/global/plugins/Services/Cron/CronHook/ViMPCron

RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/Ilias.RESTPlugin/archive/refs/heads/feature/sr-app-routes.tar.gz Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/REST
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/PegasusHelper/archive/refs/heads/main.tar.gz Customizing/global/plugins/Services/UIComponent/UserInterfaceHook/PegasusHelper
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/Learnplaces/archive/refs/heads/main.tar.gz  Customizing/global/plugins/Services/Repository/RepositoryObject/Learnplaces
WORKDIR /var/www/html/Customizing/global/plugins/Services/Repository/RepositoryObject/Learnplaces
RUN composer up
RUN /flux-ilias-ilias-base/bin/install-archive.sh https://github.com/fluxapps/TPMS/archive/refs/heads/main.tar.gz Customizing/global/plugins/Services/Cron/CronHook/TPMS

FROM fluxms/flux-ilias-nginx:7 AS nginx
COPY --from=ilias /var/www/html /var/www/html
COPY nginx/pegasus-rest.conf /flux-ilias-nginx-base/src/custom/

FROM  fluxms/flux-ilias-cron:7 AS cron
COPY --from=ilias /var/www/html /var/www/html

FROM  fluxms/flux-ilias-ilserver:7 AS ilserver
COPY --from=ilias /var/www/html /var/www/html
