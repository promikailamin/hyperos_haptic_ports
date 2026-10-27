.class Landroid/content/ContentCaptureOptions$1;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentCaptureOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentCaptureOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;
    .registers 13

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    if-eqz v0, :cond_10

    .line 339
    new-instance p1, Landroid/content/ContentCaptureOptions;

    invoke-direct {p1, v2}, Landroid/content/ContentCaptureOptions;-><init>(I)V

    return-object p1

    .line 341
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 347
    nop

    .line 348
    invoke-static {p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->-$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-result-object v9

    .line 350
    nop

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v10

    .line 352
    new-instance v1, Landroid/content/ContentCaptureOptions;

    invoke-direct/range {v1 .. v10}, Landroid/content/ContentCaptureOptions;-><init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 366
    new-array p1, p1, [Landroid/content/ContentCaptureOptions;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/ContentCaptureOptions$1;->newArray(I)[Landroid/content/ContentCaptureOptions;

    move-result-object p1

    return-object p1
.end method
