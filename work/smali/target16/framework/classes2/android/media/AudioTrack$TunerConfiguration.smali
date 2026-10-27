.class public Landroid/media/AudioTrack$TunerConfiguration;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunerConfiguration"
.end annotation


# static fields
.field public static final whitelist CONTENT_ID_NONE:I


# instance fields
.field private final blacklist mContentId:I

.field private final blacklist mSyncId:I


# direct methods
.method public constructor whitelist <init>(II)V
    .registers 5

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    if-ltz p1, :cond_2c

    .line 1031
    const/4 v0, 0x1

    if-lt p2, v0, :cond_d

    .line 1034
    iput p1, p0, Landroid/media/AudioTrack$TunerConfiguration;->mContentId:I

    .line 1035
    iput p2, p0, Landroid/media/AudioTrack$TunerConfiguration;->mSyncId:I

    .line 1036
    return-void

    .line 1032
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must be positive"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1028
    :cond_2c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be positive or CONTENT_ID_NONE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public whitelist getContentId()I
    .registers 2

    .line 1043
    iget v0, p0, Landroid/media/AudioTrack$TunerConfiguration;->mContentId:I

    return v0
.end method

.method public whitelist getSyncId()I
    .registers 2

    .line 1051
    iget v0, p0, Landroid/media/AudioTrack$TunerConfiguration;->mSyncId:I

    return v0
.end method
