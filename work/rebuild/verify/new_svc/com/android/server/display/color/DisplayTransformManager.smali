.class public Lcom/android/server/display/color/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field static final PERSISTENT_PROPERTY_COMPOSITION_COLOR_MODE:Ljava/lang/String; = "persist.sys.sf.color_mode"

.field static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field public static final sFlinger:Landroid/os/IBinder;


# instance fields
.field public final mColorMatrix:Landroid/util/SparseArray;

.field mDaltonizerLevel:I

.field mDaltonizerMode:I

.field final mDaltonizerModeLock:Ljava/lang/Object;

.field public final mTempColorMatrix:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 125
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/4 v0, 0x2

    .line 109
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/16 v3, 0x10

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 121
    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    return-void
.end method

.method public static applyColorMatrix([F)V
    .registers 5

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    const/4 v2, 0x1

    .line 217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_11
    const/16 v3, 0x10

    if-ge v2, v3, :cond_20

    .line 219
    aget v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 222
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :cond_20
    :try_start_20
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3f7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_2e
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_3a

    :catch_2e
    move-exception p0

    .line 227
    :try_start_2f
    const-string v1, "DisplayTransformManager"

    const-string v2, "Failed to set color transform"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw p0
.end method

.method public static applyDaltonizerMode(II)V
    .registers 5

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    :try_start_f
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3f6

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_1e
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_2a

    :catch_1e
    move-exception p0

    .line 244
    :try_start_1f
    const-string p1, "DisplayTransformManager"

    const-string v1, "Failed to set Daltonizer mode"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw p0
.end method


# virtual methods
.method public final applySaturation(F)V
    .registers 5

    .line 323
    const-string/jumbo p0, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 325
    const-string v0, "android.ui.ISurfaceComposer"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 328
    :try_start_16
    sget-object p1, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3fe

    invoke-interface {p1, v2, p0, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_25
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    .line 332
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_23
    move-exception p1

    goto :goto_31

    :catch_25
    move-exception p1

    .line 330
    :try_start_26
    const-string v0, "DisplayTransformManager"

    const-string v1, "Failed to set saturation"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    .line 332
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_31
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 333
    throw p1
.end method

.method public final computeColorMatrixLocked()[F
    .registers 11

    .line 196
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    const/4 v2, 0x0

    .line 202
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_12
    if-ge v2, v0, :cond_2f

    .line 204
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [F

    add-int/lit8 v3, v2, 0x1

    .line 205
    rem-int/lit8 v4, v3, 0x2

    aget-object v4, v1, v4

    rem-int/lit8 v2, v2, 0x2

    aget-object v6, v1, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move v2, v3

    goto :goto_12

    .line 207
    :cond_2f
    rem-int/lit8 v0, v0, 0x2

    aget-object p0, v1, v0

    return-object p0
.end method

.method public getColorMatrix(I)[F
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_14

    .line 136
    :cond_f
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    :goto_14
    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 137
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isDeviceColorManaged()Z
    .registers 6

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 308
    :try_start_e
    sget-object v2, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v3, 0x406

    invoke-interface {v2, v3, p0, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_22
    .catchall {:try_start_e .. :try_end_19} :catchall_20

    .line 313
    :goto_19
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_20
    move-exception v1

    goto :goto_2b

    :catch_22
    move-exception v2

    .line 311
    :try_start_23
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to query wide color support"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    goto :goto_19

    .line 313
    :goto_2b
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public needsLinearColorMatrix()Z
    .registers 2

    .line 254
    const-string/jumbo p0, "persist.sys.sf.native_mode"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public needsLinearColorMatrix(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public setColorMatrix(I[F)V
    .registers 6

    if-eqz p2, :cond_20

    .line 151
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 152
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 157
    :try_start_23
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 158
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_54

    if-nez p2, :cond_3b

    .line 160
    iget-object p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4d

    :catchall_39
    move-exception p0

    goto :goto_56

    :cond_3b
    if-nez v1, :cond_48

    .line 162
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4d

    .line 164
    :cond_48
    array-length p1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 170
    :cond_54
    monitor-exit v0

    return-void

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_23 .. :try_end_57} :catchall_39

    throw p0
.end method

.method public setColorMode(I[F[FI)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_d

    .line 271
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 272
    invoke-virtual {p0, v0, p4}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_d
    if-ne p1, v1, :cond_19

    const p1, 0x3f8ccccd    # 1.1f

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 275
    invoke-virtual {p0, v0, p4}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 277
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 278
    invoke-virtual {p0, v1, p4}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2d

    .line 280
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 281
    invoke-virtual {p0, v0, p4}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_2d
    const/16 v0, 0x100

    if-lt p1, v0, :cond_3b

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_3b

    .line 284
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 285
    invoke-virtual {p0, p1, p4}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    :cond_3b
    :goto_3b
    const/16 p1, 0x64

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    const/16 p1, 0xfa

    .line 292
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->updateConfiguration()V

    return v1
.end method

.method public setDaltonizerMode(II)V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-ne v1, p1, :cond_e

    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    if-eq v1, p2, :cond_15

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_17

    .line 184
    :cond_e
    :goto_e
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 185
    iput p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerLevel:I

    .line 186
    invoke-static {p1, p2}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(II)V

    .line 188
    :cond_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_c

    throw p0
.end method

.method public final setDisplayColor(II)V
    .registers 5

    .line 340
    const-string/jumbo p0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq p2, p0, :cond_17

    .line 342
    const-string/jumbo v0, "persist.sys.sf.color_mode"

    .line 343
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eq p2, p0, :cond_28

    .line 350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :cond_28
    :try_start_28
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 v1, 0x3ff

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_37
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    goto :goto_43

    :catch_37
    move-exception p0

    .line 355
    :try_start_38
    const-string p1, "DisplayTransformManager"

    const-string p2, "Failed to set display color"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    throw p0
.end method

.method public final updateConfiguration()V
    .registers 3

    .line 363
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 365
    const-string v0, "DisplayTransformManager"

    const-string v1, "Could not update configuration"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
