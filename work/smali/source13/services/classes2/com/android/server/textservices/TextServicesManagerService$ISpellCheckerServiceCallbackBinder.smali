.class final Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;
.super Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ISpellCheckerServiceCallbackBinder"
.end annotation


# instance fields
.field private mBindGroup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackLock:Ljava/lang/Object;

.field private mRequest:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5
    .param p1, "bindGroup"    # Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .param p2, "request"    # Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 1040
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;-><init>()V

    .line 1022
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    .line 1041
    monitor-enter v0

    .line 1042
    :try_start_b
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1043
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1044
    monitor-exit v0

    .line 1045
    return-void

    .line 1044
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v1
.end method


# virtual methods
.method public onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 6
    .param p1, "newSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;

    .line 1051
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_c

    goto :goto_28

    .line 1055
    :cond_c
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1056
    .local v1, "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 1057
    .local v2, "request":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mBindGroup:Ljava/lang/ref/WeakReference;

    .line 1058
    iput-object v3, p0, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;->mRequest:Ljava/lang/ref/WeakReference;

    .line 1059
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_2a

    .line 1060
    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    .line 1061
    invoke-virtual {v1, p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 1063
    :cond_27
    return-void

    .line 1053
    .end local v1    # "group":Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v2    # "request":Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0

    return-void

    .line 1059
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1
.end method
