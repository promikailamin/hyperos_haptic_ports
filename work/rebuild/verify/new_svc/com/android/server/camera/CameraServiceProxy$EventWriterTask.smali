.class public Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEventList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;Ljava/util/List;)V
    .registers 3

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput-object p2, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1142
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/camera/CameraServiceProxy$CameraEvent;

    .line 1144
    invoke-interface {v1}, Lcom/android/server/camera/CameraServiceProxy$CameraEvent;->logSelf()V

    const-wide/16 v1, 0x64

    .line 1146
    :try_start_19
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_8

    goto :goto_8

    .line 1149
    :cond_1d
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_22
    return-void
.end method
