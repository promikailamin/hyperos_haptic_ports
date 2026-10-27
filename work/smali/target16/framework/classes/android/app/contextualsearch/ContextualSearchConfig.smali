.class public final Landroid/app/contextualsearch/ContextualSearchConfig;
.super Ljava/lang/Object;
.source "ContextualSearchConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/ContextualSearchConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/ContextualSearchConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mIntentExtras:Landroid/os/Bundle;

.field private final blacklist mSourceBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/contextualsearch/ContextualSearchConfig$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/ContextualSearchConfig$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->-$$Nest$fgetmDisplayId(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mDisplayId:I

    .line 80
    invoke-static {p1}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->-$$Nest$fgetmSourceBounds(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    .line 81
    invoke-static {p1}, Landroid/app/contextualsearch/ContextualSearchConfig$Builder;->-$$Nest$fgetmIntentExtras(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mIntentExtras:Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;Landroid/app/contextualsearch/ContextualSearchConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/ContextualSearchConfig;-><init>(Landroid/app/contextualsearch/ContextualSearchConfig$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mDisplayId:I

    .line 61
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    .line 62
    nop

    .line 63
    const-class v0, Landroid/app/contextualsearch/ContextualSearchConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mIntentExtras:Landroid/os/Bundle;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mDisplayId:I

    return v0
.end method

.method public whitelist getIntentExtras()Landroid/os/Bundle;
    .registers 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mIntentExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public whitelist getSourceBounds()Landroid/graphics/Rect;
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_d
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContextualSearchConfig{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSourceBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntentExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 68
    iget v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 70
    iget-object p2, p0, Landroid/app/contextualsearch/ContextualSearchConfig;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
