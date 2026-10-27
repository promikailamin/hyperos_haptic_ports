.class public final Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RadioAccessSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 197
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 198
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 199
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 198
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 204
    new-instance v3, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;-><init>()V

    .line 205
    mul-int/lit8 v5, v1, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 206
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 210
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;",
            ">;)V"
        }
    .end annotation

    .line 299
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 302
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 303
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 304
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 305
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 306
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 308
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 311
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 312
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 129
    return v0

    .line 131
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 132
    return v1

    .line 134
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    if-eq v2, v3, :cond_11

    .line 135
    return v1

    .line 137
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;

    .line 138
    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    iget-byte v3, p1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    if-eq v2, v3, :cond_1a

    .line 139
    return v1

    .line 141
    :cond_1a
    iget-object v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 142
    return v1

    .line 144
    :cond_25
    return v0
.end method

.method public blacklist eutranBands()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 89
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_51

    .line 90
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 91
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 94
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 98
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist eutranBands(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 84
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 85
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public blacklist geranBands()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 49
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    if-eqz v0, :cond_50

    .line 50
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 51
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 54
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 58
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist geranBands(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 45
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 124
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 151
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist ngranBands()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_51

    .line 110
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 111
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 114
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 118
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist ngranBands(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 105
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 25

    .line 215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 216
    iget-byte v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    const/4 v5, 0x0

    const-wide/16 v6, 0x8

    packed-switch v4, :pswitch_data_13e

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v0, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :pswitch_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 271
    add-long v8, p3, v6

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 272
    mul-int/lit8 v6, v4, 0x4

    int-to-long v11, v6

    .line 273
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    .line 272
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 276
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 277
    nop

    :goto_5e
    if-ge v5, v4, :cond_76

    .line 278
    nop

    .line 279
    mul-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 280
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 283
    :cond_76
    goto/16 :goto_13d

    .line 252
    :pswitch_78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 254
    add-long v8, p3, v6

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 255
    mul-int/lit8 v6, v4, 0x4

    int-to-long v6, v6

    .line 256
    move-wide v11, v8

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long/2addr v11, v2

    .line 255
    const/4 v13, 0x1

    move-wide v7, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 259
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 260
    nop

    :goto_9f
    if-ge v5, v4, :cond_b7

    .line 261
    nop

    .line 262
    mul-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 263
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 266
    :cond_b7
    goto/16 :goto_13d

    .line 235
    :pswitch_b9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 237
    add-long v8, p3, v6

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 238
    mul-int/lit8 v6, v4, 0x4

    int-to-long v6, v6

    .line 239
    move-wide v11, v8

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long/2addr v11, v2

    .line 238
    const/4 v13, 0x1

    move-wide v7, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 242
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 243
    nop

    :goto_e0
    if-ge v5, v4, :cond_f8

    .line 244
    nop

    .line 245
    mul-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 246
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    .line 249
    :cond_f8
    goto :goto_13d

    .line 218
    :pswitch_f9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 220
    add-long v8, p3, v6

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 221
    mul-int/lit8 v6, v4, 0x4

    int-to-long v6, v6

    .line 222
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long/2addr v8, v2

    .line 221
    const/4 v13, 0x1

    move-wide/from16 v18, v10

    move-wide v11, v8

    move-wide/from16 v9, v18

    move-wide v7, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 225
    iget-object v2, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 226
    nop

    :goto_124
    if-ge v5, v4, :cond_13c

    .line 227
    nop

    .line 228
    mul-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 229
    iget-object v3, v0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_124

    .line 232
    :cond_13c
    nop

    .line 289
    :goto_13d
    return-void

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_b9
        :pswitch_78
        :pswitch_37
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 188
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 189
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 190
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-byte v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    packed-switch v1, :pswitch_data_6e

    .line 180
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_30
    const-string v1, ".ngranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    goto :goto_64

    .line 170
    :pswitch_3d
    const-string v1, ".eutranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    goto :goto_64

    .line 165
    :pswitch_4a
    const-string v1, ".utranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_64

    .line 160
    :pswitch_57
    const-string v1, ".geranBands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    nop

    .line 183
    :goto_64
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_57
        :pswitch_4a
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist utranBands()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 69
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 70
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 71
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 74
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 78
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist utranBands(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    .line 65
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_o:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 316
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-byte v4, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 317
    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    const-wide/16 v3, 0xc

    const/4 v5, 0x0

    const-wide/16 v6, 0x8

    packed-switch v2, :pswitch_data_112

    .line 371
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown union discriminator (value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-byte p3, p0, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->hidl_d:B

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :pswitch_34
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 360
    add-long/2addr p2, v6

    add-long/2addr v6, p2

    invoke-virtual {p1, v6, v7, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 361
    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 362
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 363
    nop

    :goto_4d
    if-ge v5, v2, :cond_66

    .line 364
    mul-int/lit8 v4, v5, 0x4

    int-to-long v6, v4

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->ngranBands()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 363
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 366
    :cond_66
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 368
    goto/16 :goto_111

    .line 346
    :pswitch_6c
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 347
    add-long/2addr p2, v6

    add-long/2addr v6, p2

    invoke-virtual {p1, v6, v7, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 348
    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 349
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 350
    nop

    :goto_85
    if-ge v5, v2, :cond_9e

    .line 351
    mul-int/lit8 v4, v5, 0x4

    int-to-long v6, v4

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->eutranBands()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 353
    :cond_9e
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 355
    goto :goto_111

    .line 333
    :pswitch_a3
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    add-long/2addr p2, v6

    add-long/2addr v6, p2

    invoke-virtual {p1, v6, v7, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 335
    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    nop

    :goto_bc
    if-ge v5, v2, :cond_d5

    .line 338
    mul-int/lit8 v4, v5, 0x4

    int-to-long v6, v4

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->utranBands()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 340
    :cond_d5
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 342
    goto :goto_111

    .line 320
    :pswitch_da
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 321
    add-long/2addr p2, v6

    add-long/2addr v6, p2

    invoke-virtual {p1, v6, v7, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 322
    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 323
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 324
    nop

    :goto_f3
    if-ge v5, v2, :cond_10c

    .line 325
    mul-int/lit8 v4, v5, 0x4

    int-to-long v6, v4

    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->geranBands()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_f3

    .line 327
    :cond_10c
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 329
    nop

    .line 374
    :goto_111
    return-void

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_da
        :pswitch_a3
        :pswitch_6c
        :pswitch_34
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 292
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 293
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 295
    return-void
.end method
