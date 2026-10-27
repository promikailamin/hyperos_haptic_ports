.class public final Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
.super Ljava/lang/Object;
.source "IServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/hidl/manager/V1_0/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceDebugInfo"
.end annotation


# instance fields
.field public blacklist arch:I

.field public blacklist clientPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist instanceName:Ljava/lang/String;

.field public blacklist interfaceName:Ljava/lang/String;

.field public blacklist pid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 175
    iput v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

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
            "Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 245
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 246
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 247
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 246
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 252
    new-instance v3, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    invoke-direct {v3}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;-><init>()V

    .line 253
    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 254
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 258
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
            "Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;",
            ">;)V"
        }
    .end annotation

    .line 302
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 305
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 306
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 307
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 308
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 309
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 311
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 314
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 179
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 180
    return v0

    .line 182
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 183
    return v1

    .line 185
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    if-eq v2, v3, :cond_11

    .line 186
    return v1

    .line 188
    :cond_11
    check-cast p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 189
    iget-object v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 190
    return v1

    .line 192
    :cond_1e
    iget-object v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 193
    return v1

    .line 195
    :cond_29
    iget v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    iget v3, p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    if-eq v2, v3, :cond_30

    .line 196
    return v1

    .line 198
    :cond_30
    iget-object v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 199
    return v1

    .line 201
    :cond_3b
    iget v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    iget p1, p1, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    if-eq v2, p1, :cond_42

    .line 202
    return v1

    .line 204
    :cond_42
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 209
    iget-object v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 210
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 211
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    .line 213
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 265
    iget-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 266
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 267
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    .line 265
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 270
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 272
    iget-object v6, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    .line 274
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v20, v4, v2

    .line 272
    const/16 v22, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 277
    const-wide/16 v4, 0x20

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    .line 279
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 280
    mul-int/lit8 v7, v6, 0x4

    int-to-long v7, v7

    .line 281
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v18

    add-long v20, v4, v2

    .line 280
    const/16 v22, 0x1

    move-wide/from16 v16, v7

    invoke-virtual/range {v15 .. v22}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 284
    iget-object v3, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 285
    const/4 v3, 0x0

    :goto_73
    if-ge v3, v6, :cond_89

    .line 286
    nop

    .line 287
    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 288
    iget-object v5, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 291
    :cond_89
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    .line 292
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 236
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 237
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 238
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ".interfaceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .instanceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .clientPids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", .arch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    invoke-static {v1}, Landroid/internal/hidl/base/V1_0/DebugInfo$Architecture;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 14

    .line 319
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-object v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 320
    const-wide/16 v2, 0x10

    add-long/2addr v2, p2

    iget-object v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->instanceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 321
    const-wide/16 v2, 0x20

    add-long/2addr v2, p2

    iget v4, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 323
    iget-object v2, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 324
    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    const-wide/16 v5, 0x8

    add-long/2addr v5, v3

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 325
    const-wide/16 v5, 0xc

    add-long/2addr v5, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 326
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 327
    nop

    :goto_37
    if-ge v7, v2, :cond_4e

    .line 328
    mul-int/lit8 v6, v7, 0x4

    int-to-long v8, v6

    iget-object v6, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->clientPids:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v8, v9, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 327
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 330
    :cond_4e
    add-long/2addr v3, v0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 332
    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    iget v0, p0, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->arch:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 333
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 295
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 296
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/internal/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 297
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 298
    return-void
.end method
