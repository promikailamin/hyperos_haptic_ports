.class Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredDeviceConnectionState"
.end annotation


# instance fields
.field public final mAttributes:Landroid/media/AudioDeviceAttributes;

.field public final mCaller:Ljava/lang/String;

.field public mForTest:Z

.field public final mState:I

.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/audio/AudioDeviceInventory;
    .param p2, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "state"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mForTest:Z

    .line 259
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mAttributes:Landroid/media/AudioDeviceAttributes;

    .line 260
    iput p3, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mState:I

    .line 261
    iput-object p4, p0, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    .line 262
    return-void
.end method
