.class public final Landroid/media/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeInitData"
.end annotation


# static fields
.field public static final whitelist UUID_NIL:Ljava/util/UUID;


# instance fields
.field public final whitelist data:[B

.field public final whitelist mimeType:Ljava/lang/String;

.field public final whitelist uuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroid/media/DrmInitData$SchemeInitData;->UUID_NIL:Ljava/util/UUID;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    .line 100
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 105
    instance-of v0, p1, Landroid/media/DrmInitData$SchemeInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 106
    return v1

    .line 108
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    .line 109
    return v0

    .line 112
    :cond_a
    check-cast p1, Landroid/media/DrmInitData$SchemeInitData;

    .line 113
    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    iget-object p1, p1, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    .line 115
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    nop

    .line 113
    :goto_2d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 120
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
