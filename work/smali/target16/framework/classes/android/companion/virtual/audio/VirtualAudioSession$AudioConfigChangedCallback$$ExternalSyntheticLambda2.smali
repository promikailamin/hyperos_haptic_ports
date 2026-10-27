.class public final synthetic Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;->f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->$r8$lambda$FEyDDe1j6fzOD4go87fgaypmTU8(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    return-void
.end method
