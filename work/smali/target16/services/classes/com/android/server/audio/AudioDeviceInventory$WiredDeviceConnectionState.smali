.class public Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# instance fields
.field public final mAttributes:Landroid/media/AudioDeviceAttributes;

.field public final mCaller:Ljava/lang/String;

.field public mForTest:Z

.field public final mState:I


# direct methods
.method public constructor <init>(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 5

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 810
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 811
    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 812
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    return-void
.end method
