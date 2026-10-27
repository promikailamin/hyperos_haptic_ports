.class public abstract Landroid/media/MediaMetadataEditor;
.super Ljava/lang/Object;
.source "MediaMetadataEditor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist BITMAP_KEY_ARTWORK:I = 0x64

.field public static final greylist-max-o KEY_EDITABLE_MASK:I = 0x1fffffff

.field protected static final greylist-max-o METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

.field protected static final greylist-max-o METADATA_TYPE_BITMAP:I = 0x2

.field protected static final greylist-max-o METADATA_TYPE_INVALID:I = -0x1

.field protected static final greylist-max-o METADATA_TYPE_LONG:I = 0x0

.field protected static final greylist-max-o METADATA_TYPE_RATING:I = 0x3

.field protected static final greylist-max-o METADATA_TYPE_STRING:I = 0x1

.field public static final whitelist RATING_KEY_BY_OTHERS:I = 0x65

.field public static final whitelist RATING_KEY_BY_USER:I = 0x10000001

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaMetadataEditor"


# instance fields
.field protected greylist-max-o mApplied:Z

.field protected greylist-max-o mArtworkChanged:Z

.field protected greylist-max-o mEditableKeys:J

.field protected greylist-max-o mEditorArtwork:Landroid/graphics/Bitmap;

.field protected greylist-max-o mEditorMetadata:Landroid/os/Bundle;

.field protected greylist-max-o mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

.field protected greylist-max-o mMetadataChanged:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 443
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    .line 446
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 455
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x10000001

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 96
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    .line 101
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist addEditableKey(I)V
    .registers 6

    monitor-enter p0

    .line 143
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 144
    const-string p1, "MediaMetadataEditor"

    const-string v0, "Can\'t change editable keys of a previously applied MetadataEditor"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_41

    .line 145
    monitor-exit p0

    return-void

    .line 149
    :cond_e
    const v0, 0x10000001

    if-ne p1, v0, :cond_21

    .line 150
    :try_start_13
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const v2, 0x1fffffff

    and-int/2addr p1, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    goto :goto_3f

    .line 153
    :cond_21
    const-string v0, "MediaMetadataEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cannot be edited"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_41

    .line 155
    :goto_3f
    monitor-exit p0

    return-void

    .line 142
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public abstract whitelist apply()V
.end method

.method public declared-synchronized whitelist clear()V
    .registers 3

    monitor-enter p0

    .line 125
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 126
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t clear a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 131
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    .line 132
    monitor-exit p0

    return-void

    .line 124
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public declared-synchronized whitelist getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    const/16 v0, 0x64

    if-ne p1, v0, :cond_f

    .line 369
    :try_start_5
    iget-object p1, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-object p2

    .line 365
    :catchall_d
    move-exception p1

    goto :goto_28

    .line 367
    :cond_f
    :try_start_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 365
    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_d

    throw p1
.end method

.method public declared-synchronized whitelist getEditableKeys()[I
    .registers 5

    monitor-enter p0

    .line 177
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const-wide/32 v2, 0x10000001

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 178
    const v0, 0x10000001

    filled-new-array {v0}, [I

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 179
    monitor-exit p0

    return-object v0

    .line 181
    :cond_13
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized whitelist getLong(IJ)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_16

    .line 337
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2f

    monitor-exit p0

    return-wide p1

    .line 335
    :cond_16
    :try_start_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type \'long\' for key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 333
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public declared-synchronized whitelist getObject(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_86

    goto :goto_6a

    .line 397
    :pswitch_c
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 398
    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_83

    monitor-exit p0

    return-object p1

    .line 400
    :cond_24
    monitor-exit p0

    return-object p2

    .line 404
    :pswitch_26
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6a

    .line 405
    :try_start_2a
    iget-object p1, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_30

    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_83

    :cond_30
    monitor-exit p0

    return-object p2

    .line 391
    :pswitch_32
    :try_start_32
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 392
    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_83

    monitor-exit p0

    return-object p1

    .line 394
    :cond_4a
    monitor-exit p0

    return-object p2

    .line 385
    :pswitch_4c
    :try_start_4c
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 386
    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_83

    monitor-exit p0

    return-object p1

    .line 388
    :cond_68
    monitor-exit p0

    return-object p2

    .line 408
    :cond_6a
    :goto_6a
    :try_start_6a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 382
    :catchall_83
    move-exception p1

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_6a .. :try_end_85} :catchall_83

    throw p1

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_32
        :pswitch_26
        :pswitch_c
    .end packed-switch
.end method

.method public declared-synchronized whitelist getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 353
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_30

    monitor-exit p0

    return-object p1

    .line 351
    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type \'String\' for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 349
    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public declared-synchronized whitelist putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 261
    const-string p1, "MediaMetadataEditor"

    const-string p2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    .line 262
    monitor-exit p0

    return-object p0

    .line 264
    :cond_e
    const/16 v0, 0x64

    if-ne p1, v0, :cond_19

    .line 267
    :try_start_12
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 268
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_32

    .line 269
    monitor-exit p0

    return-object p0

    .line 265
    :cond_19
    :try_start_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 259
    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized whitelist putLong(IJ)Landroid/media/MediaMetadataEditor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 236
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 237
    const-string p1, "MediaMetadataEditor"

    const-string p2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3e

    .line 238
    monitor-exit p0

    return-object p0

    .line 240
    :cond_e
    :try_start_e
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_25

    .line 243
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_3e

    .line 245
    monitor-exit p0

    return-object p0

    .line 241
    :cond_25
    :try_start_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type \'long\' for key "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 235
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public declared-synchronized whitelist putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 292
    const-string p1, "MediaMetadataEditor"

    const-string p2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_bd

    .line 293
    monitor-exit p0

    return-object p0

    .line 295
    :cond_e
    :try_start_e
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_c0

    .line 319
    new-instance p2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_a6

    .line 309
    :pswitch_1c
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 310
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_bd

    .line 311
    nop

    .line 321
    monitor-exit p0

    return-object p0

    .line 313
    :pswitch_2d
    if-eqz p2, :cond_4d

    :try_start_2f
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_34

    goto :goto_4d

    .line 316
    :cond_34
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a Bitmap for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 314
    :cond_4d
    :goto_4d
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_bd

    monitor-exit p0

    return-object p1

    .line 303
    :pswitch_55
    if-eqz p2, :cond_75

    :try_start_57
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5c

    goto :goto_75

    .line 306
    :cond_5c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a String for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 304
    :cond_75
    :goto_75
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    move-result-object p1
    :try_end_7b
    .catchall {:try_start_57 .. :try_end_7b} :catchall_bd

    monitor-exit p0

    return-object p1

    .line 297
    :pswitch_7d
    :try_start_7d
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8d

    .line 298
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    move-result-object p1
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_bd

    monitor-exit p0

    return-object p1

    .line 300
    :cond_8d
    :try_start_8d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a non-null Long for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 319
    :goto_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 290
    :catchall_bd
    move-exception p1

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_8d .. :try_end_bf} :catchall_bd

    throw p1

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_55
        :pswitch_2d
        :pswitch_1c
    .end packed-switch
.end method

.method public declared-synchronized whitelist putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 208
    const-string p1, "MediaMetadataEditor"

    const-string p2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3e

    .line 209
    monitor-exit p0

    return-object p0

    .line 211
    :cond_e
    :try_start_e
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 214
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_3e

    .line 216
    monitor-exit p0

    return-object p0

    .line 212
    :cond_25
    :try_start_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid type \'String\' for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 206
    :catchall_3e
    move-exception p1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public declared-synchronized whitelist removeEditableKeys()V
    .registers 5

    monitor-enter p0

    .line 161
    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_e

    .line 162
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t remove all editable keys of a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1d

    .line 163
    monitor-exit p0

    return-void

    .line 165
    :cond_e
    :try_start_e
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    .line 166
    iput-wide v2, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1d

    .line 169
    :cond_1b
    monitor-exit p0

    return-void

    .line 160
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method
