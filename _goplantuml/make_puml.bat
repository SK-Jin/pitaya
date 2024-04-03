rem	https:\\github.com\jfeliu007\goplantuml
rem		go get github.com\jfeliu007\goplantuml\parser
rem		go install github.com\jfeliu007\goplantuml\cmd\goplantuml@latest


rem goplantuml -recursive .. > pitaya_all.puml 


set opt=-show-aggregations -show-aliases -show-compositions -show-connection-labels -show-implementations -show-options-as-note 
set ropt=-recursive %opt%%

del *.puml

rem pitaya root 에는 -recursive 를 하지 않도록 설정함
rem 폴더가 있어도 puml 이 생성되지 않는 것은 제거 함.
goplantuml %opt% -title pitaya .. > pitaya.puml 

goplantuml %ropt% -title pitaya_pitaya-cli ..\pitaya-cli > pitaya-cli.puml 
rem goplantuml %ropt% -title pitaya_pitaya-protos ..\pitaya-protos > pitaya-protos.puml 

goplantuml %ropt% -title pitaya_acceptor ..\acceptor > pitaya_acceptor.puml
goplantuml %ropt% -title pitaya_acceptorwrapper ..\acceptorwrapper > pitaya_acceptorwrapper.puml
goplantuml %ropt% -title pitaya_agent ..\agent > pitaya_agent.puml
rem goplantuml %ropt% -title pitaya_agent_mocks ..\agent\mocks > pitaya_agent_mocks.puml
goplantuml %ropt% -title pitaya_benchmark ..\benchmark > pitaya_benchmark.puml
goplantuml %ropt% -title pitaya_client ..\client > pitaya_client.puml
goplantuml %ropt% -title pitaya_cluster ..\cluster > pitaya_cluster.puml
rem goplantuml %ropt% -title pitaya_cluster_mocks ..\cluster\mocks > pitaya_cluster_mocks.puml
goplantuml %ropt% -title pitaya_component ..\component > pitaya_component.puml
goplantuml %ropt% -title pitaya_config ..\config > pitaya_config.puml
goplantuml %ropt% -title pitaya_conn ..\conn > pitaya_conn.puml
rem goplantuml %ropt% -title pitaya_conn_codec ..\conn\codec > pitaya_conn_codec.puml
rem goplantuml %ropt% -title pitaya_conn_codec_mocks ..\conn\codec\mocks > pitaya_conn_codec_mocks.puml
rem goplantuml %ropt% -title pitaya_conn_message ..\conn\message > pitaya_conn_message.puml
rem goplantuml %ropt% -title pitaya_conn_message_mocks ..\conn\message\mocks > pitaya_conn_message_mocks.puml
rem goplantuml %ropt% -title pitaya_conn_packet ..\conn\packet > pitaya_conn_packet.puml
goplantuml %ropt% -title pitaya_constants ..\constants > pitaya_constants.puml
rem goplantuml %ropt% -title pitaya_context ..\context > pitaya_context.puml
goplantuml %ropt% -title pitaya_defaultpipelines ..\defaultpipelines > pitaya_defaultpipelines.puml
goplantuml %sopt% -title pitaya_docgenerator ..\docgenerator > pitaya_docgenerator.puml
goplantuml %sopt% -title pitaya_groups ..\groups > pitaya_groups.puml
goplantuml %sopt% -title pitaya_interfaces ..\interfaces > pitaya_interfaces.puml
rem goplantuml %sopt% -title pitaya_logger ..\logger > pitaya_logger.puml
rem goplantuml %sopt% -title pitaya_logger_interfaces ..\logger\interfaces > pitaya_logger_interfaces.puml
rem goplantuml %sopt% -title pitaya_logger_logrus ..\logger\logrus > pitaya_logger_logrus.puml
goplantuml %sopt% -title pitaya_metrics ..\metrics > pitaya_metrics.puml
rem goplantuml %sopt% -title pitaya_metrics_mocks ..\metrics\mocks > pitaya_metrics_mocks.puml
rem goplantuml %sopt% -title pitaya_metrics_models ..\metrics\models > pitaya_metrics_models.puml
goplantuml %sopt% -title pitaya_mocks ..\mocks > pitaya_mocks.puml
goplantuml %sopt% -title pitaya_modules ..\modules > pitaya_modules.puml
goplantuml %sopt% -title pitaya_networkentity ..\networkentity > pitaya_networkentity.puml
rem goplantuml %sopt% -title pitaya_pipeline ..\pipleline > pitaya_pipeline.puml
goplantuml %sopt% -title pitaya_protos ..\protos > pitaya_protos.puml
rem goplantuml %sopt% -title pitaya_protos_mocks ..\protos\mocks > pitaya_protos_mocks.puml
goplantuml %sopt% -title pitaya_remote ..\remote > pitaya_remote.puml
goplantuml %sopt% -title pitaya_route ..\route > pitaya_route.puml
goplantuml %sopt% -title pitaya_router ..\router > pitaya_router.puml
goplantuml %sopt% -title pitaya_serialize ..\serialize > pitaya_serialize.puml
goplantuml %sopt% -title pitaya_service ..\service > pitaya_service.puml
goplantuml %sopt% -title pitaya_session ..\session > pitaya_session.puml
rem goplantuml %sopt% -title pitaya_session_mocks ..\session\mocks > pitaya_session_mocks.puml
goplantuml %sopt% -title pitaya_timer ..\timer > pitaya_timer.puml
goplantuml %sopt% -title pitaya_worker ..\worker > pitaya_worker.puml
rem goplantuml %sopt% -title pitaya_worker_mocks ..\worker\mocks > pitaya_worker_mocks.puml


rem 실행파일에 대해 수행해서는 의미 없음
goplantuml %sopt% -title pitaya_demo_cluster_grpc ..\examples\demo\cluster_grpc > pitaya_demo_cluster_grpc.puml
goplantuml %sopt% -title pitaya_demo_cluster_grpc_services ..\examples\demo\cluster_grpc\services > pitaya_demo_cluster_grpc_services.puml
