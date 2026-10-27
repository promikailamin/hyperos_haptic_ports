.class public final Landroid/content/theming/ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/theming/ThemeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist contrast:Ljava/lang/Float;

.field public final blacklist seedColor:Ljava/lang/Integer;

.field public final blacklist style:Ljava/lang/Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Landroid/content/theming/ThemeInfo$1;

    invoke-direct {v0}, Landroid/content/theming/ThemeInfo$1;-><init>()V

    sput-object v0, Landroid/content/theming/ThemeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/theming/ThemeInfo;->seedColor:Ljava/lang/Integer;

    .line 55
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/theming/ThemeInfo;->style:Ljava/lang/Integer;

    .line 56
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iput-object p1, p0, Landroid/content/theming/ThemeInfo;->contrast:Ljava/lang/Float;

    .line 57
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/theming/ThemeInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/theming/ThemeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/content/theming/ThemeInfo;->seedColor:Ljava/lang/Integer;

    .line 49
    iput-object p2, p0, Landroid/content/theming/ThemeInfo;->style:Ljava/lang/Integer;

    .line 50
    iput-object p3, p0, Landroid/content/theming/ThemeInfo;->contrast:Ljava/lang/Float;

    .line 51
    return-void
.end method

.method public static blacklist build(Landroid/graphics/Color;Ljava/lang/Integer;Ljava/lang/Float;)Landroid/content/theming/ThemeInfo;
    .registers 4

    .line 70
    new-instance v0, Landroid/content/theming/ThemeInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_e
    invoke-direct {v0, p0, p1, p2}, Landroid/content/theming/ThemeInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 76
    iget-object p2, p0, Landroid/content/theming/ThemeInfo;->seedColor:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 77
    iget-object p2, p0, Landroid/content/theming/ThemeInfo;->style:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 78
    iget-object p2, p0, Landroid/content/theming/ThemeInfo;->contrast:Ljava/lang/Float;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
