.class public final Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;
.super Ljava/lang/Object;
.source "WearableSensingManagerService.java"


# instance fields
.field public final mDataRequestObserverId:I

.field public final mDataRequestPendingIntent:Landroid/app/PendingIntent;

.field public final mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

.field public final mDataType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIILandroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 6

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataType:I

    .line 101
    iput p2, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mUserId:I

    .line 102
    iput p3, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestObserverId:I

    .line 103
    iput-object p4, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestPendingIntent:Landroid/app/PendingIntent;

    .line 104
    iput-object p5, p0, Lcom/android/server/wearable/WearableSensingManagerService$DataRequestObserverContext;->mDataRequestRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method
