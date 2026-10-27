.class public Lcom/miui/translationservice/provider/TranslationResult$Symbol;
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
    name = "Symbol"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhAm:Ljava/lang/String;

.field private blacklist mPhEn:Ljava/lang/String;

.field private blacklist mWordSymbol:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhEn(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhAm(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setWordSymbol(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setParts(Ljava/util/List;)V

    .line 148
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Symbol-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPhAm()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPhEn()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWordSymbol()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setParts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    .line 184
    return-void
.end method

.method public whitelist setPhAm(Ljava/lang/String;)V
    .registers 2
    .param p1, "phAm"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public whitelist setPhEn(Ljava/lang/String;)V
    .registers 2
    .param p1, "phEn"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public whitelist setWordSymbol(Ljava/lang/String;)V
    .registers 2
    .param p1, "wordSymbol"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 201
    return-void
.end method
