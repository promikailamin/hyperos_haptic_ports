.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_AUTO_CORRECTION:I = 0x4

.field public static final whitelist FLAG_EASY_CORRECT:I = 0x1

.field public static final whitelist FLAG_GRAMMAR_ERROR:I = 0x8

.field public static final whitelist FLAG_MISSPELLED:I = 0x2

.field public static final whitelist SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final whitelist SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private greylist-max-o mAutoCorrectionUnderlineColor:I

.field private greylist-max-o mAutoCorrectionUnderlineThickness:F

.field private greylist-max-r mEasyCorrectUnderlineColor:I

.field private greylist-max-r mEasyCorrectUnderlineThickness:F

.field private greylist-max-o mFlags:I

.field private blacklist mGrammarErrorUnderlineColor:I

.field private blacklist mGrammarErrorUnderlineThickness:F

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mLanguageTag:Ljava/lang/String;

.field private final greylist-max-o mLocaleStringForCompatibility:Ljava/lang/String;

.field private greylist-max-o mMisspelledUnderlineColor:I

.field private greylist-max-o mMisspelledUnderlineThickness:F

.field private final greylist-max-o mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 397
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 181
    const/4 p5, 0x5

    array-length v0, p3

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 182
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 183
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 185
    if-eqz p2, :cond_16

    .line 186
    goto :goto_2b

    .line 187
    :cond_16
    if-eqz p1, :cond_23

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_2b

    .line 191
    :cond_23
    const-string p2, "SuggestionSpan"

    const-string p3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 p2, 0x0

    .line 194
    :goto_2b
    const-string p3, ""

    if-nez p2, :cond_31

    move-object p4, p3

    goto :goto_35

    :cond_31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_35
    iput-object p4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 195
    if-nez p2, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    :goto_3e
    iput-object p3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 196
    iget-object p2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object p3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object p4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-static {p2, p3, p4}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 198
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 10

    .line 156
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 157
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 16

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 252
    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/text/style/SuggestionSpan;-><init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V

    .line 263
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .registers 10

    .line 165
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 166
    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIFIFIFIF)V
    .registers 14

    .line 271
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 272
    iput-object p1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 273
    iput p2, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 274
    iput-object p3, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 276
    iput p5, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 277
    iput p6, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 278
    iput p7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 279
    iput p8, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 280
    iput p9, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 281
    iput p10, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 282
    iput p11, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 283
    iput p12, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 284
    iput p13, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 285
    return-void
.end method

.method private static blacklist hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private greylist-max-o initStyle(Landroid/content/Context;)V
    .registers 9

    .line 202
    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 203
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 204
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 205
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 206
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 207
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 208
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 209
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 210
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 211
    return-void

    .line 214
    :cond_16
    nop

    .line 215
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v3, 0x0

    const v4, 0x1120105

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 217
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 219
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 221
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    nop

    .line 224
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const v6, 0x1120104

    invoke-virtual {p1, v3, v2, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 228
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 230
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    nop

    .line 233
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const v6, 0x1120103

    invoke-virtual {p1, v3, v2, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 237
    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 239
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    nop

    .line 242
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const v6, 0x1120102

    invoke-virtual {p1, v3, v2, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 244
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 246
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 380
    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 381
    check-cast p1, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result p1

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne p1, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 383
    :cond_11
    return v1
.end method

.method public blacklist getAutoCorrectionUnderlineColor()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v0
.end method

.method public blacklist getAutoCorrectionUnderlineThickness()F
    .registers 2

    .line 500
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    return v0
.end method

.method public blacklist getEasyCorrectUnderlineColor()I
    .registers 2

    .line 485
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v0
.end method

.method public blacklist getEasyCorrectUnderlineThickness()F
    .registers 2

    .line 480
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public blacklist getGrammarErrorUnderlineColor()I
    .registers 2

    .line 515
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v0
.end method

.method public blacklist getGrammarErrorUnderlineThickness()F
    .registers 2

    .line 510
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocaleObject()Ljava/util/Locale;
    .registers 2

    .line 318
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public blacklist getMisspelledUnderlineColor()I
    .registers 2

    .line 495
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v0
.end method

.method public blacklist getMisspelledUnderlineThickness()F
    .registers 2

    .line 490
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    return v0
.end method

.method public greylist getNotificationTargetClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 370
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 375
    const/16 v0, 0x13

    return v0
.end method

.method public whitelist getSuggestions()[Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUnderlineColor()I
    .registers 7

    .line 444
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 445
    :goto_b
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 446
    :goto_13
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 447
    :goto_1c
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    .line 448
    :goto_24
    if-eqz v3, :cond_33

    .line 449
    if-eqz v1, :cond_2b

    .line 450
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v0

    .line 451
    :cond_2b
    if-eqz v0, :cond_30

    .line 452
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v0

    .line 454
    :cond_30
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v0

    .line 456
    :cond_33
    if-eqz v4, :cond_38

    .line 457
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v0

    .line 458
    :cond_38
    if-eqz v0, :cond_3d

    .line 459
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v0

    .line 460
    :cond_3d
    if-eqz v1, :cond_42

    .line 461
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v0

    .line 463
    :cond_42
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 388
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public greylist-max-r notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    const-string p1, "SuggestionSpan"

    const-string p2, "notifySelection() is deprecated.  Does nothing."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 2

    .line 338
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 339
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 8

    .line 412
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 413
    :goto_b
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    .line 414
    :goto_13
    iget v4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 415
    :goto_1c
    iget v5, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_23

    move v1, v2

    .line 416
    :cond_23
    if-eqz v3, :cond_47

    .line 417
    if-nez v0, :cond_31

    if-nez v1, :cond_31

    .line 418
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 419
    :cond_31
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v0, :cond_64

    .line 422
    if-eqz v1, :cond_3f

    .line 423
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 426
    :cond_3f
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 429
    :cond_47
    if-eqz v4, :cond_51

    .line 430
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 431
    :cond_51
    if-eqz v0, :cond_5b

    .line 432
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_64

    .line 433
    :cond_5b
    if-eqz v1, :cond_64

    .line 434
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0, v1}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 436
    :cond_64
    :goto_64
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 348
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 349
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 3

    .line 353
    iget-object p2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 354
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-object p2, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object p2, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 360
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 362
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 364
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget p2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 366
    return-void
.end method
