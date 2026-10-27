.class Lcom/xiaomi/engine/BufferFormat$1;
.super Ljava/lang/Object;
.source "BufferFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/engine/BufferFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/engine/BufferFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/engine/BufferFormat;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 188
    new-instance v0, Lcom/xiaomi/engine/BufferFormat;

    invoke-direct {v0, p1}, Lcom/xiaomi/engine/BufferFormat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/xiaomi/engine/BufferFormat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/engine/BufferFormat;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/xiaomi/engine/BufferFormat;
    .registers 3
    .param p1, "size"    # I

    .line 193
    new-array v0, p1, [Lcom/xiaomi/engine/BufferFormat;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 185
    invoke-virtual {p0, p1}, Lcom/xiaomi/engine/BufferFormat$1;->newArray(I)[Lcom/xiaomi/engine/BufferFormat;

    move-result-object p1

    return-object p1
.end method
