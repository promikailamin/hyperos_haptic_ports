.class public final Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareShortcutInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mTargetComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 737
    new-instance v0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V
    .registers 3

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-eqz p1, :cond_15

    .line 703
    if-eqz p2, :cond_c

    .line 707
    iput-object p1, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 708
    iput-object p2, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 709
    return-void

    .line 704
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "target component is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 701
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "shortcut info is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    const-class v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 713
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 714
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getTargetComponent()Landroid/content/ComponentName;
    .registers 2

    .line 723
    iget-object v0, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mTargetComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 733
    iget-object v0, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 734
    iget-object v0, p0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->mTargetComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 735
    return-void
.end method
