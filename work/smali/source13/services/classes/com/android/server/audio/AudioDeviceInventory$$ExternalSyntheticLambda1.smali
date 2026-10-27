.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectLeAudio$13$com-android-server-audio-AudioDeviceInventory(IILjava/lang/String;)V

    return-void
.end method
