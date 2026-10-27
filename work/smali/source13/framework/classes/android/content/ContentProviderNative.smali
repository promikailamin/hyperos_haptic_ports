.class public abstract Landroid/content/ContentProviderNative;
.super Landroid/os/Binder;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.content.IContentProvider"

    invoke-virtual {p0, p0, v0}, Landroid/content/ContentProviderNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    nop

    .line 64
    const-string v0, "android.content.IContentProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    .line 65
    .local v0, "in":Landroid/content/IContentProvider;
    if-eqz v0, :cond_10

    .line 66
    return-object v0

    .line 69
    :cond_10
    new-instance v1, Landroid/content/ContentProviderProxy;

    invoke-direct {v1, p0}, Landroid/content/ContentProviderProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 436
    return-object p0
.end method

.method public abstract greylist-max-o getProviderName()Ljava/lang/String;
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 83
    const/4 v0, 0x0

    const-string v1, "android.content.IContentProvider"

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_362

    .line 428
    :pswitch_c
    goto/16 :goto_35d

    .line 387
    :pswitch_e
    :try_start_e
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 389
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 390
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 391
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 392
    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 393
    return v10

    .line 364
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    :pswitch_2d
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 366
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 367
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 368
    .restart local v1    # "uri":Landroid/net/Uri;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 369
    .restart local v2    # "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 370
    return v10

    .line 153
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    :pswitch_4c
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 155
    .local v0, "url":Landroid/net/Uri;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 156
    .local v1, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    .line 157
    return v10

    .line 412
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    :pswitch_63
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 414
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 415
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 416
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .local v2, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 419
    .local v3, "modeFlags":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I

    move-result v4

    .line 420
    .local v4, "out":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    return v10

    .line 397
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uid":I
    .end local v3    # "modeFlags":I
    .end local v4    # "out":I
    :pswitch_89
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 399
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 400
    .local v1, "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 401
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 402
    .local v3, "extras":Landroid/os/Bundle;
    nop

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 402
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 405
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z

    move-result v5

    .line 406
    .local v5, "out":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v5, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v0, -0x1

    :goto_b4
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    return v10

    .line 375
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "out":Z
    :pswitch_b8
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 377
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 378
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 380
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-static {v9, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 383
    return v10

    .line 352
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_d6
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 354
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 355
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 357
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 358
    .restart local v2    # "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-static {v9, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 360
    return v10

    .line 342
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "out":Landroid/net/Uri;
    :pswitch_f4
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 345
    .local v0, "cancellationSignal":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 347
    return v10

    .line 318
    .end local v0    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :pswitch_106
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 320
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/AttributionSource;

    .line 321
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 322
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 324
    .local v5, "opts":Landroid/os/Bundle;
    nop

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 324
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 328
    .local v6, "signal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 329
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v1, :cond_13d

    .line 331
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {v1, v9, v10}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_140

    .line 335
    :cond_13d
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    :goto_140
    return v10

    .line 306
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "opts":Landroid/os/Bundle;
    .end local v6    # "signal":Landroid/os/ICancellationSignal;
    :pswitch_141
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 308
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "mimeTypeFilter":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderNative;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "types":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 313
    return v10

    .line 287
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "mimeTypeFilter":Ljava/lang/String;
    .end local v2    # "types":[Ljava/lang/String;
    :pswitch_15b
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 290
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/AttributionSource;

    .line 291
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "authority":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "method":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "stringArg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .local v6, "extras":Landroid/os/Bundle;
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, "responseBundle":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 301
    return v10

    .line 191
    .end local v0    # "responseBundle":Landroid/os/Bundle;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "stringArg":Ljava/lang/String;
    .end local v6    # "extras":Landroid/os/Bundle;
    :pswitch_183
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 193
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 194
    .local v1, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "authority":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .local v3, "numOperations":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19c
    if-ge v5, v3, :cond_1ac

    .line 199
    sget-object v6, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_19c

    .line 201
    .end local v5    # "i":I
    :cond_1ac
    invoke-virtual {p0, v1, v2, v4}, Landroid/content/ContentProviderNative;->applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 203
    .local v5, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {v9, v5, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 205
    return v10

    .line 264
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "authority":Ljava/lang/String;
    .end local v3    # "numOperations":I
    .end local v4    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :pswitch_1b7
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 266
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 267
    .restart local v1    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 268
    .local v2, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "mode":Ljava/lang/String;
    nop

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 269
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 273
    .local v4, "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 274
    .local v5, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v5, :cond_1e7

    .line 276
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v5, v9, v10}, Landroid/content/res/AssetFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1ea

    .line 280
    :cond_1e7
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    :goto_1ea
    return v10

    .line 241
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "fd":Landroid/content/res/AssetFileDescriptor;
    :pswitch_1eb
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 243
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 244
    .restart local v1    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 245
    .restart local v2    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .restart local v3    # "mode":Ljava/lang/String;
    nop

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 246
    invoke-static {v4}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 250
    .restart local v4    # "signal":Landroid/os/ICancellationSignal;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentProviderNative;->openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 251
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v5, :cond_21b

    .line 253
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {v5, v9, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21e

    .line 257
    :cond_21b
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_21e
    return v10

    .line 177
    .end local v1    # "attributionSource":Landroid/content/AttributionSource;
    .end local v2    # "url":Landroid/net/Uri;
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "signal":Landroid/os/ICancellationSignal;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_21f
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 179
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 180
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 181
    .local v1, "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    .line 183
    .local v2, "values":[Landroid/content/ContentValues;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    .line 184
    .local v3, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return v10

    .line 225
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":[Landroid/content/ContentValues;
    .end local v3    # "count":I
    :pswitch_245
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 228
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 229
    .restart local v1    # "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 230
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 232
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v4

    .line 234
    .local v4, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return v10

    .line 210
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "count":I
    :pswitch_26f
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 212
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 213
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 214
    .restart local v1    # "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 216
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentProviderNative;->delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3

    .line 218
    .local v3, "count":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    return v10

    .line 162
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "count":I
    :pswitch_291
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 165
    .restart local v0    # "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 166
    .restart local v1    # "url":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 167
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 169
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentProviderNative;->insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    .line 170
    .local v4, "out":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {v9, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 172
    return v10

    .line 143
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v4    # "out":Landroid/net/Uri;
    :pswitch_2bb
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 145
    .local v0, "url":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Landroid/content/ContentProviderNative;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v10

    .line 86
    .end local v0    # "url":Landroid/net/Uri;
    .end local v1    # "type":Ljava/lang/String;
    :pswitch_2d1
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/AttributionSource;

    .line 90
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    .line 93
    .local v3, "url":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v11, v1

    .line 94
    .local v11, "num":I
    const/4 v1, 0x0

    .line 95
    .local v1, "projection":[Ljava/lang/String;
    if-lez v11, :cond_2ff

    .line 96
    new-array v4, v11, [Ljava/lang/String;

    move-object v1, v4

    .line 97
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2f2
    if-ge v4, v11, :cond_2fd

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f2

    :cond_2fd
    move-object v12, v1

    goto :goto_300

    .line 95
    .end local v4    # "i":I
    :cond_2ff
    move-object v12, v1

    .line 102
    .end local v1    # "projection":[Ljava/lang/String;
    .local v12, "projection":[Ljava/lang/String;
    :goto_300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 103
    .local v5, "queryArgs":Landroid/os/Bundle;
    nop

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    move-object v13, v1

    .line 105
    .local v13, "observer":Landroid/database/IContentObserver;
    nop

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v6

    .line 108
    .local v6, "cancellationSignal":Landroid/os/ICancellationSignal;
    move-object v1, p0

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderNative;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31d} :catch_358

    .line 110
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_351

    .line 111
    const/4 v4, 0x0

    .line 114
    .local v4, "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :try_start_320
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor;

    .line 115
    invoke-virtual {p0}, Landroid/content/ContentProviderNative;->getProviderName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Landroid/database/CursorToBulkCursorAdaptor;-><init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;)V

    move-object v4, v0

    .line 116
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->getBulkCursorDescriptor()Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    .line 119
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    const/4 v4, 0x0

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, v9, v10}, Landroid/database/BulkCursorDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_339
    .catchall {:try_start_320 .. :try_end_339} :catchall_344

    .line 126
    .end local v0    # "d":Landroid/database/BulkCursorDescriptor;
    if-eqz v4, :cond_33e

    .line 127
    :try_start_33b
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 129
    :cond_33e
    if-eqz v1, :cond_343

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :cond_343
    goto :goto_357

    .line 126
    .restart local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    :catchall_344
    move-exception v0

    if-eqz v4, :cond_34a

    .line 127
    invoke-virtual {v4}, Landroid/database/CursorToBulkCursorAdaptor;->close()V

    .line 129
    :cond_34a
    if-eqz v1, :cond_34f

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_34f
    nop

    .end local p0    # "this":Landroid/content/ContentProviderNative;
    .end local p1    # "code":I
    .end local p2    # "data":Landroid/os/Parcel;
    .end local p3    # "reply":Landroid/os/Parcel;
    .end local p4    # "flags":I
    throw v0

    .line 134
    .end local v4    # "adaptor":Landroid/database/CursorToBulkCursorAdaptor;
    .restart local p0    # "this":Landroid/content/ContentProviderNative;
    .restart local p1    # "code":I
    .restart local p2    # "data":Landroid/os/Parcel;
    .restart local p3    # "reply":Landroid/os/Parcel;
    .restart local p4    # "flags":I
    :cond_351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_357} :catch_358

    .line 138
    :goto_357
    return v10

    .line 425
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "attributionSource":Landroid/content/AttributionSource;
    .end local v3    # "url":Landroid/net/Uri;
    .end local v5    # "queryArgs":Landroid/os/Bundle;
    .end local v6    # "cancellationSignal":Landroid/os/ICancellationSignal;
    .end local v11    # "num":I
    .end local v12    # "projection":[Ljava/lang/String;
    .end local v13    # "observer":Landroid/database/IContentObserver;
    :catch_358
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v9, v0}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 427
    return v10

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35d
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_data_362
    .packed-switch 0x1
        :pswitch_2d1
        :pswitch_2bb
        :pswitch_291
        :pswitch_26f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_245
        :pswitch_c
        :pswitch_c
        :pswitch_21f
        :pswitch_1eb
        :pswitch_1b7
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_183
        :pswitch_15b
        :pswitch_141
        :pswitch_106
        :pswitch_f4
        :pswitch_d6
        :pswitch_b8
        :pswitch_89
        :pswitch_63
        :pswitch_4c
        :pswitch_2d
        :pswitch_e
    .end packed-switch
.end method
