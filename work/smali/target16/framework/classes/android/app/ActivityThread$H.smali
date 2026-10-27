.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final greylist-max-o APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final greylist-max-o ATTACH_AGENT:I = 0x9b

.field public static final blacklist ATTACH_STARTUP_AGENTS:I = 0xa2

.field public static final greylist-max-o BIND_APPLICATION:I = 0x6e

.field public static final greylist BIND_SERVICE:I = 0x79

.field public static final greylist-max-o CLEAN_UP_CONTEXT:I = 0x77

.field public static final greylist-max-o CONFIGURATION_CHANGED:I = 0x76

.field public static final greylist-max-o CREATE_BACKUP_AGENT:I = 0x80

.field public static final greylist CREATE_SERVICE:I = 0x72

.field public static final greylist-max-o DESTROY_BACKUP_AGENT:I = 0x81

.field public static final greylist-max-o DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final greylist-max-o DUMP_ACTIVITY:I = 0x88

.field public static final blacklist DUMP_GFXINFO:I = 0xa5

.field public static final greylist-max-o DUMP_HEAP:I = 0x87

.field public static final greylist DUMP_PROVIDER:I = 0x8d

.field public static final blacklist DUMP_RESOURCES:I = 0xa6

.field public static final greylist-max-o DUMP_SERVICE:I = 0x7b

.field public static final greylist ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final greylist-max-o EXECUTE_TRANSACTION:I = 0x9f

.field public static final greylist EXIT_APPLICATION:I = 0x6f

.field public static final blacklist FINISH_INSTRUMENTATION_WITHOUT_RESTART:I = 0xab

.field public static final greylist GC_WHEN_IDLE:I = 0x78

.field public static final greylist INSTALL_PROVIDER:I = 0x91

.field public static final blacklist INSTRUMENT_WITHOUT_RESTART:I = 0xaa

.field public static final greylist-max-o LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final greylist-max-o LOW_MEMORY:I = 0x7c

.field public static final blacklist ON_NEW_SCENE_TRANSITION_INFO:I = 0x92

.field public static final blacklist PING:I = 0xa8

.field public static final greylist-max-o PROFILER_CONTROL:I = 0x7f

.field public static final blacklist PURGE_RESOURCES:I = 0xa1

.field public static final greylist RECEIVER:I = 0x71

.field public static final greylist-max-o RELAUNCH_ACTIVITY:I = 0xa0

.field public static final greylist REMOVE_PROVIDER:I = 0x83

.field public static final greylist-max-o REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final blacklist REQUEST_HANDOFF_ACTIVITY_DATA:I = 0xad

.field public static final greylist-max-o RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final greylist SCHEDULE_CRASH:I = 0x86

.field public static final greylist SERVICE_ARGS:I = 0x73

.field public static final blacklist SET_CONTENT_CAPTURE_OPTIONS_CALLBACK:I = 0xa4

.field public static final greylist-max-o SET_CORE_SETTINGS:I = 0x8a

.field public static final greylist-max-o SLEEPING:I = 0x89

.field public static final greylist-max-o START_BINDER_TRACKING:I = 0x96

.field public static final greylist-max-o STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final greylist STOP_SERVICE:I = 0x74

.field public static final greylist-max-o SUICIDE:I = 0x82

.field public static final blacklist TIMEOUT_SERVICE:I = 0xa7

.field public static final blacklist TIMEOUT_SERVICE_FOR_TYPE:I = 0xac

.field public static final greylist-max-o TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final greylist UNBIND_SERVICE:I = 0x7a

.field public static final greylist-max-o UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final greylist-max-o UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final blacklist UPDATE_UI_TRANSLATION_STATE:I = 0xa3


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2542
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2543
    return-void
.end method


# virtual methods
.method greylist-max-o codeToString(I)Ljava/lang/String;
    .registers 2

    .line 2671
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 2676
    nop

    .line 2680
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    .line 2681
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2682
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x40

    const-wide/16 v9, -0x1

    packed-switch v3, :pswitch_data_548

    :pswitch_15
    goto/16 :goto_51b

    .line 2991
    :pswitch_17
    const-string v3, "handleHandoffActivityDataRequest"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2993
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$RequestHandoffActivityData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleHandoffActivityDataRequest(Landroid/app/ActivityThread;Landroid/app/ActivityThread$RequestHandoffActivityData;)V

    .line 2994
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_51b

    .line 2815
    :pswitch_2a
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceTimeoutForType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2819
    :cond_49
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleTimeoutServiceForType(Landroid/app/ActivityThread;Landroid/os/IBinder;II)V

    .line 2820
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2821
    goto/16 :goto_51b

    .line 2988
    :pswitch_5b
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V

    .line 2989
    goto/16 :goto_51b

    .line 2985
    :pswitch_62
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$AppBindData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2986
    goto/16 :goto_51b

    .line 2812
    :pswitch_6d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/RemoteCallback;

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2813
    goto/16 :goto_51b

    .line 2804
    :pswitch_76
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 2805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2806
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2805
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2808
    :cond_99
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v5}, Landroid/app/ActivityThread;->-$$Nest$mhandleTimeoutService(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V

    .line 2809
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2810
    goto/16 :goto_51b

    .line 2886
    :pswitch_a9
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V

    .line 2887
    goto/16 :goto_51b

    .line 2841
    :pswitch_b4
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2842
    goto/16 :goto_51b

    .line 2982
    :pswitch_bf
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_51b

    .line 2976
    :pswitch_ca
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2977
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Landroid/view/translation/TranslationSpec;

    iget-object v8, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Landroid/view/translation/TranslationSpec;

    iget-object v9, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Landroid/view/translation/UiTranslationSpec;

    invoke-static/range {v4 .. v10}, Landroid/app/ActivityThread;->-$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 2980
    goto/16 :goto_51b

    .line 2973
    :pswitch_f2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/app/ActivityThread;->handleAttachStartupAgents(Ljava/lang/String;)V

    .line 2974
    goto/16 :goto_51b

    .line 2970
    :pswitch_fb
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2971
    goto/16 :goto_51b

    .line 2967
    :pswitch_102
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    .line 2968
    goto/16 :goto_51b

    .line 2956
    :pswitch_10d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/servertransaction/ClientTransaction;

    .line 2958
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v4

    .line 2959
    invoke-virtual {v4}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionStarted()V

    .line 2961
    :try_start_118
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v5}, Landroid/app/ActivityThread;->-$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_121
    .catchall {:try_start_118 .. :try_end_121} :catchall_127

    .line 2963
    invoke-virtual {v4}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionFinished()V

    .line 2964
    nop

    .line 2965
    goto/16 :goto_51b

    .line 2963
    :catchall_127
    move-exception v0

    move-object p1, v0

    invoke-virtual {v4}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionFinished()V

    .line 2964
    throw p1

    .line 2952
    :pswitch_12d
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2954
    goto/16 :goto_51b

    .line 2949
    :pswitch_144
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mapplyPendingApplicationInfoChanges(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2950
    goto/16 :goto_51b

    .line 2944
    :pswitch_14f
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 2945
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v3, :cond_15d

    iget-object v4, v3, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    :cond_15d
    invoke-static {v5, v4}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 2946
    goto/16 :goto_51b

    .line 2940
    :pswitch_162
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v3, v4, v5}, Landroid/app/ActivityThread;->-$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 2942
    goto/16 :goto_51b

    .line 2937
    :pswitch_179
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    .line 2938
    goto/16 :goto_51b

    .line 2934
    :pswitch_184
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V

    .line 2935
    goto/16 :goto_51b

    .line 2931
    :pswitch_18b
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2932
    goto/16 :goto_51b

    .line 2926
    :pswitch_196
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 2928
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->onNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 2929
    goto/16 :goto_51b

    .line 2915
    :pswitch_1a9
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_1cc

    .line 2916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "providerInstall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2917
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2916
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2920
    :cond_1cc
    :try_start_1cc
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_1d5
    .catchall {:try_start_1cc .. :try_end_1d5} :catchall_1db

    .line 2922
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2923
    nop

    .line 2924
    goto/16 :goto_51b

    .line 2922
    :catchall_1db
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2923
    throw p1

    .line 2912
    :pswitch_1e1
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v5, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    move v5, v6

    :goto_1ed
    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 2913
    goto/16 :goto_51b

    .line 2906
    :pswitch_1f2
    const-string v3, "handleRequestAssistContextExtras"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2908
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    .line 2909
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2910
    goto/16 :goto_51b

    .line 2903
    :pswitch_205
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2904
    goto/16 :goto_51b

    .line 2892
    :pswitch_210
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2893
    goto/16 :goto_51b

    .line 2900
    :pswitch_21b
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    .line 2901
    goto/16 :goto_51b

    .line 2895
    :pswitch_226
    const-string/jumbo v3, "setCoreSettings"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2896
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 2897
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2898
    goto/16 :goto_51b

    .line 2889
    :pswitch_23a
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2890
    goto/16 :goto_51b

    .line 2883
    :pswitch_245
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v3}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    .line 2884
    goto/16 :goto_51b

    .line 2875
    :pswitch_24e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2876
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2877
    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2878
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2879
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v6, v5}, Landroid/app/ActivityThread;->-$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2880
    goto/16 :goto_51b

    .line 2870
    :pswitch_266
    const-string v3, "broadcastPackage"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2871
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 2872
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2873
    goto/16 :goto_51b

    .line 2865
    :pswitch_27b
    const-string/jumbo v3, "providerRemove"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2866
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 2867
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2868
    goto/16 :goto_51b

    .line 2862
    :pswitch_28f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 2863
    goto/16 :goto_51b

    .line 2857
    :pswitch_298
    const-string v3, "backupDestroyAgent"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2858
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2859
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2860
    goto/16 :goto_51b

    .line 2852
    :pswitch_2ab
    const-string v3, "backupCreateAgent"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2853
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2854
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2855
    goto/16 :goto_51b

    .line 2849
    :pswitch_2be
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2c5

    goto :goto_2c6

    :cond_2c5
    move v5, v6

    :goto_2c6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ProfilerInfo;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 2850
    goto/16 :goto_51b

    .line 2844
    :pswitch_2d1
    const-string/jumbo v3, "lowMemory"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2845
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 2846
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2847
    goto/16 :goto_51b

    .line 2838
    :pswitch_2e1
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2839
    goto/16 :goto_51b

    .line 2764
    :pswitch_2ec
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_30f

    .line 2765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceUnbind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2766
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2765
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2768
    :cond_30f
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2769
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2770
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2771
    goto/16 :goto_51b

    .line 2743
    :pswitch_322
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_345

    .line 2744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceBind: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2745
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2744
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2747
    :cond_345
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$BindServiceData;

    .line 2748
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_359

    .line 2749
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2751
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2750
    invoke-static {v4}, Lcom/android/internal/os/DebugStore;->recordServiceBind(I)J

    move-result-wide v9

    .line 2754
    :cond_359
    :try_start_359
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    :try_end_35e
    .catchall {:try_start_359 .. :try_end_35e} :catchall_36d

    .line 2756
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2757
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_36b

    .line 2758
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2759
    move v0, v6

    .line 2762
    :cond_36b
    goto/16 :goto_51b

    .line 2756
    :catchall_36d
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2757
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_37c

    .line 2758
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2759
    nop

    .line 2761
    :cond_37c
    throw p1

    .line 2830
    :pswitch_37d
    const-string v3, "gcWhenIdle"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2832
    :try_start_382
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->scheduleGcIdler()V
    :try_end_387
    .catchall {:try_start_382 .. :try_end_387} :catchall_38d

    .line 2834
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2835
    nop

    .line 2836
    goto/16 :goto_51b

    .line 2834
    :catchall_38d
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2835
    throw p1

    .line 2826
    :pswitch_393
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 2827
    iget-object v4, v3, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v5, v3, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v3, v3, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    goto/16 :goto_51b

    .line 2823
    :pswitch_3a2
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3}, Landroid/app/ActivityThread;->-$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2824
    goto/16 :goto_51b

    .line 2795
    :pswitch_3b1
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3d4

    .line 2796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceStop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2797
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2796
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2799
    :cond_3d4
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2800
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2801
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2802
    goto/16 :goto_51b

    .line 2773
    :pswitch_3e7
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_40a

    .line 2774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2775
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2774
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2777
    :cond_40a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ServiceArgsData;

    .line 2778
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_41e

    .line 2779
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2781
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2780
    invoke-static {v4}, Lcom/android/internal/os/DebugStore;->recordServiceStart(I)J

    move-result-wide v9

    .line 2785
    :cond_41e
    :try_start_41e
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    :try_end_423
    .catchall {:try_start_41e .. :try_end_423} :catchall_432

    .line 2787
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2788
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_430

    .line 2789
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2790
    move v0, v6

    .line 2793
    :cond_430
    goto/16 :goto_51b

    .line 2787
    :catchall_432
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2788
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_441

    .line 2789
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2790
    nop

    .line 2792
    :cond_441
    throw p1

    .line 2721
    :pswitch_442
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_465

    .line 2722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceCreate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2723
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2722
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2725
    :cond_465
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$CreateServiceData;

    .line 2726
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_479

    .line 2727
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2729
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 2728
    invoke-static {v4}, Lcom/android/internal/os/DebugStore;->recordServiceCreate(I)J

    move-result-wide v9

    .line 2733
    :cond_479
    :try_start_479
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    :try_end_47e
    .catchall {:try_start_479 .. :try_end_47e} :catchall_48d

    .line 2735
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2736
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_48b

    .line 2737
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2738
    move v0, v6

    .line 2741
    :cond_48b
    goto/16 :goto_51b

    .line 2735
    :catchall_48d
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2736
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_49c

    .line 2737
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2738
    nop

    .line 2740
    :cond_49c
    throw p1

    .line 2703
    :pswitch_49d
    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_4cd

    .line 2704
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ReceiverData;

    .line 2705
    iget-object v4, v3, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_4c8

    .line 2706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastReceiveComp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2707
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2706
    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_4cd

    .line 2709
    :cond_4c8
    const-string v3, "broadcastReceiveComp"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2713
    :cond_4cd
    :goto_4cd
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$ReceiverData;

    .line 2715
    :try_start_4d1
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    :try_end_4d6
    .catchall {:try_start_4d1 .. :try_end_4d6} :catchall_4db

    .line 2717
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2718
    nop

    .line 2719
    goto :goto_51b

    .line 2717
    :catchall_4db
    move-exception v0

    move-object p1, v0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2718
    throw p1

    .line 2697
    :pswitch_4e1
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v3, :cond_4ee

    .line 2698
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->onTerminate()V

    .line 2700
    :cond_4ee
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 2701
    goto :goto_51b

    .line 2684
    :pswitch_4f6
    const-string v3, "bindApplication"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2685
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_505

    .line 2687
    invoke-static {}, Lcom/android/internal/os/DebugStore;->recordBindApplication()J

    move-result-wide v9

    .line 2689
    :cond_505
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityThread$AppBindData;

    .line 2690
    iget-object v4, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2691
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_517

    .line 2692
    invoke-static {v9, v10}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2694
    :cond_517
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2695
    nop

    .line 2997
    :goto_51b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 2998
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2999
    instance-of v2, v1, Lcom/android/internal/os/SomeArgs;

    if-eqz v2, :cond_52b

    .line 3000
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3003
    :cond_52b
    if-eqz v0, :cond_546

    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetLONG_MESSAGE_THRESHOLD_MS()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-lez v0, :cond_546

    .line 3005
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3, v4}, Lcom/android/internal/os/DebugStore;->recordLongLooperMessage(ILjava/lang/String;J)V

    .line 3008
    :cond_546
    return-void

    nop

    :pswitch_data_548
    .packed-switch 0x6e
        :pswitch_4f6
        :pswitch_4e1
        :pswitch_15
        :pswitch_49d
        :pswitch_442
        :pswitch_3e7
        :pswitch_3b1
        :pswitch_15
        :pswitch_3a2
        :pswitch_393
        :pswitch_37d
        :pswitch_322
        :pswitch_2ec
        :pswitch_2e1
        :pswitch_2d1
        :pswitch_15
        :pswitch_15
        :pswitch_2be
        :pswitch_2ab
        :pswitch_298
        :pswitch_28f
        :pswitch_27b
        :pswitch_15
        :pswitch_266
        :pswitch_24e
        :pswitch_245
        :pswitch_23a
        :pswitch_15
        :pswitch_226
        :pswitch_21b
        :pswitch_15
        :pswitch_210
        :pswitch_205
        :pswitch_1f2
        :pswitch_1e1
        :pswitch_1a9
        :pswitch_196
        :pswitch_15
        :pswitch_15
        :pswitch_18b
        :pswitch_184
        :pswitch_179
        :pswitch_15
        :pswitch_15
        :pswitch_162
        :pswitch_14f
        :pswitch_144
        :pswitch_15
        :pswitch_12d
        :pswitch_10d
        :pswitch_102
        :pswitch_fb
        :pswitch_f2
        :pswitch_ca
        :pswitch_bf
        :pswitch_b4
        :pswitch_a9
        :pswitch_76
        :pswitch_6d
        :pswitch_15
        :pswitch_62
        :pswitch_5b
        :pswitch_2a
        :pswitch_17
    .end packed-switch
.end method
