.class public Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;
.super Landroid/os/Handler;
.source "IntrusionDetectionService.java"


# instance fields
.field public final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .registers 3

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RemoteException"

    const-string v2, "IntrusionDetectionService"

    if-eqz v0, :cond_62

    const/4 v3, 0x1

    if-eq v0, v3, :cond_53

    const/4 v3, 0x2

    if-eq v0, v3, :cond_44

    const/4 v3, 0x3

    if-eq v0, v3, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_2b
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mtransport(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Ljava/util/List;)V

    return-void

    .line 179
    :cond_35
    :try_start_35
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mdisable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 181
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 172
    :cond_44
    :try_start_44
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$menable(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p0

    .line 174
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 164
    :cond_53
    :try_start_53
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$mremoveStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p0

    .line 167
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 156
    :cond_62
    :try_start_62
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    invoke-static {p0, p1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$maddStateCallback(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_6c

    return-void

    :catch_6c
    move-exception p0

    .line 159
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_70
    return-void
.end method
