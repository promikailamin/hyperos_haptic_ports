.class public Lcom/miui/translationservice/provider/TranslationResult$Phrase;
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
    name = "Phrase"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mExplains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhrase:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 305
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->setPhrase(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "explains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->setExplains(Ljava/util/List;)V

    .line 283
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Phrase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExplains()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPhrase()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setExplains(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p1, "explains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    .line 299
    return-void
.end method

.method public whitelist setPhrase(Ljava/lang/String;)V
    .registers 2
    .param p1, "phrase"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 324
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 326
    return-void
.end method
