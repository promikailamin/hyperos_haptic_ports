.class public Lcom/android/internal/app/QuickAppResolveInfo;
.super Ljava/lang/Object;
.source "QuickAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/QuickAppResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist iconUri:Landroid/net/Uri;

.field public blacklist label:Ljava/lang/String;

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist pagePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/android/internal/app/QuickAppResolveInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/QuickAppResolveInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/QuickAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/android/internal/app/QuickAppResolveInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/app/QuickAppResolveInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/QuickAppResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pagePath"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "iconUri"    # Landroid/net/Uri;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/android/internal/app/QuickAppResolveInfo;->iconUri:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    .line 74
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->iconUri:Landroid/net/Uri;

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 43
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    instance-of v2, p1, Lcom/android/internal/app/QuickAppResolveInfo;

    if-nez v2, :cond_c

    goto :goto_30

    .line 46
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/QuickAppResolveInfo;

    .line 47
    .local v2, "that":Lcom/android/internal/app/QuickAppResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    .line 48
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    .line 49
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 47
    :goto_2f
    return v0

    .line 44
    .end local v2    # "that":Lcom/android/internal/app/QuickAppResolveInfo;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 34
    iget-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->pagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/internal/app/QuickAppResolveInfo;->iconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    return-void
.end method
