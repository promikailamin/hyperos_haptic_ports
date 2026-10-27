.class public Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# instance fields
.field public final mCallback:Landroid/media/session/ISessionControllerCallback;

.field public final mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathMonitor(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    .line 2546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2547
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 2548
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 2549
    iput-object p3, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method
