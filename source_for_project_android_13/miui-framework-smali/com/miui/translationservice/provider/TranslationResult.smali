.class public Lcom/miui/translationservice/provider/TranslationResult;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$Phrase;,
        Lcom/miui/translationservice/provider/TranslationResult$Part;,
        Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_ERROR_NETWORK:I = -0x2

.field public static final whitelist RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final whitelist RESULT_SUCCESS:I


# instance fields
.field private blacklist mCopyright:Ljava/lang/String;

.field private blacklist mDetailLink:Ljava/lang/String;

.field private blacklist mPhrases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStatus:I

.field private blacklist mSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTranslations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWordName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .line 21
    const-class v0, Lcom/miui/translationservice/provider/TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setCopyright(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setDetailLink(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setStatus(I)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setWordName(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setSymbols(Ljava/util/List;)V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v2, "phrases":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Phrase;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/miui/translationservice/provider/TranslationResult;->setPhrases(Ljava/util/List;)V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, "translations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/miui/translationservice/provider/TranslationResult;->setTranslations(Ljava/util/List;)V

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCopyright()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDetailLink()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPhrases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    return v0
.end method

.method public whitelist getSymbols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTranslations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getWordName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setCopyright(Ljava/lang/String;)V
    .registers 2
    .param p1, "copyright"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public whitelist setDetailLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailLink"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public whitelist setPhrases(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "phrases":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Phrase;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    .line 91
    return-void
.end method

.method public whitelist setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 60
    iput p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    .line 61
    return-void
.end method

.method public whitelist setSymbols(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    .line 81
    return-void
.end method

.method public whitelist setTranslations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "translations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    .line 101
    return-void
.end method

.method public whitelist setWordName(Ljava/lang/String;)V
    .registers 2
    .param p1, "wordName"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 121
    return-void
.end method
