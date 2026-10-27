.class public Landroid/os/statistics/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final blacklist MAX_STRING_ARRAY_LENGTH:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "ParcelUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;
    .registers 4
    .param p0, "src"    # Landroid/os/Parcel;

    .line 31
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 32
    return-object v0

    .line 34
    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, "length":I
    if-ltz v1, :cond_1a

    const/16 v2, 0x64

    if-le v1, v2, :cond_f

    goto :goto_1a

    .line 39
    :cond_f
    :try_start_f
    new-array v2, v1, [Ljava/lang/String;

    .line 40
    .local v2, "res":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    .line 41
    return-object v2

    .line 42
    .end local v2    # "res":[Ljava/lang/String;
    :catch_15
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 45
    .end local v2    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 36
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static blacklist writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V
    .registers 4
    .param p0, "des"    # Landroid/os/Parcel;
    .param p1, "s"    # [Ljava/lang/String;

    .line 14
    if-nez p0, :cond_3

    .line 15
    return-void

    .line 16
    :cond_3
    if-nez p1, :cond_a

    .line 17
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    return-void

    .line 19
    :cond_a
    array-length v0, p1

    const/16 v1, 0x64

    if-le v0, v1, :cond_20

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 22
    const-string v0, "ParcelUtils"

    const-string v1, "array is too long, write failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 26
    :cond_20
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 28
    return-void
.end method
