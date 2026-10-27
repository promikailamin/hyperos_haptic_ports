.class public Lcom/miui/translationservice/provider/TranslationResult$Part;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPart:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 259
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Part$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Part$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Part;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Part;->setPart(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Part;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Part;->setMeans(Ljava/util/List;)V

    .line 226
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Part-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Part;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMeans()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPart()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setMeans(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    .line 242
    return-void
.end method

.method public whitelist setPart(Ljava/lang/String;)V
    .registers 2
    .param p1, "part"    # Ljava/lang/String;

    .line 231
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 255
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 257
    return-void
.end method
