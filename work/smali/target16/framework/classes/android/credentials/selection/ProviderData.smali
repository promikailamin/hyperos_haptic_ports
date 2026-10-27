.class public abstract Landroid/credentials/selection/ProviderData;
.super Ljava/lang/Object;
.source "ProviderData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist EXTRA_DISABLED_PROVIDER_DATA_LIST:Ljava/lang/String; = "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

.field public static final blacklist EXTRA_ENABLED_PROVIDER_DATA_LIST:Ljava/lang/String; = "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"


# instance fields
.field private final blacklist mProviderFlattenedComponentName:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    .line 75
    iput-object p1, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    .line 76
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProviderFlattenedComponentName()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 81
    iget-object p2, p0, Landroid/credentials/selection/ProviderData;->mProviderFlattenedComponentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 82
    return-void
.end method
