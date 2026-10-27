.class public Lmiui/process/PreloadProcessData;
.super Ljava/lang/Object;
.source "PreloadProcessData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/PreloadProcessData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist intent:Landroid/content/Intent;

.field private blacklist packageName:Ljava/lang/String;

.field private blacklist startActivity:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lmiui/process/PreloadProcessData$1;

    invoke-direct {v0}, Lmiui/process/PreloadProcessData$1;-><init>()V

    sput-object v0, Lmiui/process/PreloadProcessData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 37
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLandroid/content/Intent;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "startActivity"    # Z
    .param p3, "intent"    # Landroid/content/Intent;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 31
    iput-object p3, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIntent()Landroid/content/Intent;
    .registers 2

    .line 81
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 85
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public blacklist startActivity(Z)V
    .registers 2
    .param p1, "startActivity"    # Z

    .line 77
    iput-boolean p1, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 78
    return-void
.end method

.method public blacklist startActivity()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 59
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
