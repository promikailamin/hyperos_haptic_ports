.class public Lcom/android/server/audio/SoundEffectsHelper$4;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .registers 2

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 287
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V

    const/4 p0, 0x1

    return p0
.end method
