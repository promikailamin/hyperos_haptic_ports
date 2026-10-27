.class public Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;
.super Ljava/lang/Object;
.source "PageInjectorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/injector/PageInjectorInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/injector/PageInjectorInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 17
    return-void
.end method
