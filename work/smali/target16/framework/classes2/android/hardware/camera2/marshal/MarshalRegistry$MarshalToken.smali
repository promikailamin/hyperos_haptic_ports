.class Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
.super Ljava/lang/Object;
.source "MarshalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/MarshalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarshalToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist hash:I

.field final blacklist nativeType:I

.field final blacklist typeReference:Landroid/hardware/camera2/utils/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    .line 109
    iput p2, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    .line 110
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->hashCode()I

    move-result p1

    xor-int/2addr p1, p2

    iput p1, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    .line 111
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 119
    instance-of v0, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 120
    check-cast p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    .line 121
    iget-object v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    iget-object v2, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->typeReference:Landroid/hardware/camera2/utils/TypeReference;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/utils/TypeReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    iget p1, p1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->nativeType:I

    if-ne v0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 125
    :cond_19
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;->hash:I

    return v0
.end method
