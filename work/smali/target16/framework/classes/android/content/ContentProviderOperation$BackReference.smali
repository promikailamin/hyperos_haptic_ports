.class public Landroid/content/ContentProviderOperation$BackReference;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackReference"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderOperation$BackReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist fromIndex:I

.field private final blacklist fromKey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 634
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$BackReference$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation$BackReference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput p1, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    .line 588
    iput-object p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    .line 589
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    goto :goto_19

    .line 596
    :cond_16
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    .line 598
    :goto_19
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resolve([Landroid/content/ContentProviderResult;I)Ljava/lang/Object;
    .registers 5

    .line 601
    iget v0, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    if-ge v0, p2, :cond_30

    .line 606
    iget p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    aget-object p1, p1, p2

    .line 608
    iget-object p2, p1, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    if-eqz p2, :cond_15

    .line 609
    iget-object p1, p1, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    iget-object p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2f

    .line 610
    :cond_15
    iget-object p2, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz p2, :cond_24

    .line 611
    iget-object p1, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2f

    .line 613
    :cond_24
    iget-object p1, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 615
    :goto_2f
    return-object p1

    .line 602
    :cond_30
    const-string p1, "ContentProviderOperation"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asked for back ref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but there are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " back refs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 620
    iget p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    if-eqz p2, :cond_13

    .line 622
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object p2, p0, Landroid/content/ContentProviderOperation$BackReference;->fromKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    goto :goto_17

    .line 625
    :cond_13
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :goto_17
    return-void
.end method
