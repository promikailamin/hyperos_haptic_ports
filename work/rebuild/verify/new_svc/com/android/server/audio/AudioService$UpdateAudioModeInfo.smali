.class public Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public final mForce:Z

.field public final mMode:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Z)V
    .registers 5

    .line 5439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5440
    iput p1, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    .line 5441
    iput p2, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    .line 5442
    iput-object p3, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    .line 5443
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mForce:Z

    return-void
.end method


# virtual methods
.method public getForce()Z
    .registers 1

    .line 5460
    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mForce:Z

    return p0
.end method

.method public getMode()I
    .registers 1

    .line 5451
    iget p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 5457
    iget-object p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 5454
    iget p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    return p0
.end method
