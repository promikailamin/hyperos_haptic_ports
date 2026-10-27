.class public final Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "TextServicesManagerService.java"


# instance fields
.field public mBindGroup:Ljava/lang/ref/WeakReference;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mRequest:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    .line 1052
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    .line 1071
    monitor-enter v0

    .line 1072
    :try_start_b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1073
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1074
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw p0
.end method


# virtual methods
.method public onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 6

    .line 1081
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_c

    goto :goto_2a

    .line 1085
    :cond_c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1086
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    const/4 v3, 0x0

    .line 1087
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1088
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1089
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_28

    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    .line 1091
    invoke-virtual {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1083
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 1089
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_28

    throw p0
.end method
