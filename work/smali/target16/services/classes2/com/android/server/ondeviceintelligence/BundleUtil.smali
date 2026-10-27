.class public abstract Lcom/android/server/ondeviceintelligence/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# direct methods
.method public static canMarshall(Ljava/lang/Object;)Z
    .registers 2

    .line 349
    instance-of v0, p0, [B

    if-nez v0, :cond_11

    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-nez v0, :cond_11

    .line 351
    invoke-static {p0}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static ensureValidBundle(Landroid/os/Bundle;)V
    .registers 2

    if-eqz p0, :cond_11

    .line 359
    invoke-virtual {p0}, Landroid/os/Bundle;->hasBinders()I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 360
    :cond_9
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle should not contain IBinder objects."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request passed is expected to be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sanitizeInferenceParams(Landroid/os/Bundle;)V
    .registers 4

    .line 65
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_88

    .line 71
    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    .line 82
    :cond_2a
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    instance-of v1, v2, Landroid/database/CursorWindow;

    if-eqz v1, :cond_35

    goto :goto_13

    .line 85
    :cond_35
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_3f

    .line 86
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeInferenceParams(Landroid/os/Bundle;)V

    goto :goto_13

    .line 87
    :cond_3f
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_49

    .line 88
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_13

    .line 89
    :cond_49
    instance-of v1, v2, Landroid/os/SharedMemory;

    if-eqz v1, :cond_55

    .line 90
    check-cast v2, Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    goto :goto_13

    .line 91
    :cond_55
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5f

    .line 92
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13

    .line 93
    :cond_5f
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_69

    .line 94
    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_13

    .line 96
    :cond_69
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    return-void
.end method

.method public static sanitizeResponseParams(Landroid/os/Bundle;)V
    .registers 4

    .line 110
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_78

    .line 116
    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2a

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_13

    .line 127
    :cond_2a
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_13

    .line 131
    :cond_31
    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_3b

    .line 132
    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeResponseParams(Landroid/os/Bundle;)V

    goto :goto_13

    .line 133
    :cond_3b
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_45

    .line 134
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_13

    .line 135
    :cond_45
    instance-of v1, v2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4f

    .line 136
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13

    .line 137
    :cond_4f
    instance-of v1, v2, [Landroid/os/Parcelable;

    if-eqz v1, :cond_59

    .line 138
    check-cast v2, [Landroid/os/Parcelable;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_13

    .line 140
    :cond_59
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    :goto_78
    return-void
.end method

.method public static sanitizeStateParams(Landroid/os/Bundle;)V
    .registers 4

    .line 153
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->ensureValidBundle(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_59

    .line 159
    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_29

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    .line 170
    :cond_29
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->canMarshall(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_12

    .line 174
    :cond_30
    instance-of v1, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_3a

    .line 175
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_12

    .line 177
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Parcelable type encountered in the Bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method public static tryCloseParcelableArray([Landroid/os/Parcelable;)V
    .registers 6

    .line 410
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_26

    aget-object v2, p0, v1

    .line 412
    :try_start_6
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_12

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 413
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_23

    :catch_10
    move-exception v2

    goto :goto_1c

    .line 414
    :cond_12
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_23

    check-cast v2, Landroid/graphics/Bitmap;

    .line 415
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_10

    goto :goto_23

    .line 418
    :goto_1c
    const-string v3, "BundleUtil"

    const-string v4, "Error closing a resource in a Parcelable array"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_23
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method

.method public static tryCloseResource(Landroid/os/Bundle;)V
    .registers 6

    if-eqz p0, :cond_77

    .line 424
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_77

    .line 428
    :cond_a
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 429
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 433
    :try_start_22
    instance-of v3, v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_2e

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 434
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_12

    :catch_2c
    move-exception v2

    goto :goto_60

    .line 435
    :cond_2e
    instance-of v3, v2, Landroid/database/CursorWindow;

    if-eqz v3, :cond_38

    check-cast v2, Landroid/database/CursorWindow;

    .line 436
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    goto :goto_12

    .line 437
    :cond_38
    instance-of v3, v2, Landroid/os/SharedMemory;

    if-eqz v3, :cond_42

    check-cast v2, Landroid/os/SharedMemory;

    .line 439
    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V

    goto :goto_12

    .line 440
    :cond_42
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4c

    check-cast v2, Landroid/graphics/Bitmap;

    .line 441
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_12

    .line 442
    :cond_4c
    instance-of v3, v2, [Landroid/os/Parcelable;

    if-eqz v3, :cond_56

    check-cast v2, [Landroid/os/Parcelable;

    .line 443
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseParcelableArray([Landroid/os/Parcelable;)V

    goto :goto_12

    .line 444
    :cond_56
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_12

    check-cast v2, Landroid/os/Bundle;

    .line 445
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5f} :catch_2c

    goto :goto_12

    .line 448
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing resource with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BundleUtil"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_77
    :goto_77
    return-void
.end method

.method public static validateBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 398
    :cond_7
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a mutable Bitmap in the Bundle at key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateBitmapsImmutable([Landroid/os/Parcelable;)V
    .registers 4

    .line 404
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 405
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public static validateParcelableArray([Landroid/os/Parcelable;)V
    .registers 3

    .line 365
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_e

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_e

    .line 367
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdsReadOnly([Landroid/os/Parcelable;)V

    return-void

    .line 368
    :cond_e
    array-length v0, p0

    if-lez v0, :cond_1b

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 369
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validateBitmapsImmutable([Landroid/os/Parcelable;)V

    return-void

    .line 371
    :cond_1b
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Could not cast to any known parcelable array"

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_15

    .line 386
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v0, Landroid/system/OsConstants;->F_GETFL:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v0

    .line 387
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    if-ne p0, v0, :cond_16

    :goto_15
    return-void

    .line 388
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v0, "Bundle contains a parcel file descriptor which is not read-only."

    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1e
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p0

    .line 392
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Invalid File descriptor passed in the Bundle."

    invoke-direct {v0, v1, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static validatePfdsReadOnly([Landroid/os/Parcelable;)V
    .registers 4

    .line 376
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 377
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/IResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Z)Landroid/app/ondeviceintelligence/IResponseCallback;
    .registers 11

    .line 262
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ondeviceintelligence/BundleUtil$2;-><init>(Landroid/app/ondeviceintelligence/IResponseCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Z)V

    return-object v0
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Z)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    .registers 11

    .line 190
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ondeviceintelligence/BundleUtil$1;-><init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;Z)V

    return-object v0
.end method

.method public static wrapWithValidation(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/internal/infra/AndroidFuture;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;)Landroid/app/ondeviceintelligence/ITokenInfoCallback;
    .registers 4

    .line 322
    new-instance v0, Lcom/android/server/ondeviceintelligence/BundleUtil$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/ondeviceintelligence/BundleUtil$3;-><init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V

    return-object v0
.end method
