.class public Lmiui/settings/splitlib/SplitPageIntent;
.super Ljava/lang/Object;
.source "SplitPageIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/settings/splitlib/SplitPageIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mSplitPagePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lmiui/settings/splitlib/SplitPageIntent$1;

    invoke-direct {v0}, Lmiui/settings/splitlib/SplitPageIntent$1;-><init>()V

    sput-object v0, Lmiui/settings/splitlib/SplitPageIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "splitPagePath"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 13
    iput-object p2, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    .line 14
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIntent()Landroid/content/Intent;
    .registers 2

    .line 39
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getSplitPagePath()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 35
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget-object v0, p0, Lmiui/settings/splitlib/SplitPageIntent;->mSplitPagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
