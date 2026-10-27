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

    .line 375
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I
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

    .line 179
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 180
    array-length v0, p3

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 182
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 184
    if-eqz p2, :cond_17

    .line 185
    move-object v2, p2

    .local v2, "sourceLocale":Ljava/util/Locale;
    goto :goto_2c

    .line 186
    .end local v2    # "sourceLocale":Ljava/util/Locale;
    :cond_17
    if-eqz p1, :cond_24

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v2    # "sourceLocale":Ljava/util/Locale;
    goto :goto_2c

    .line 190
    .end local v2    # "sourceLocale":Ljava/util/Locale;
    :cond_24
    const-string v2, "SuggestionSpan"

    const-string v3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    .line 193
    .restart local v2    # "sourceLocale":Ljava/util/Locale;
    :goto_2c
    const-string v3, ""

    if-nez v2, :cond_32

    move-object v4, v3

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_36
    iput-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 194
    if-nez v2, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    iput-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 195
    invoke-static {v1, v3, v4}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 197
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 155
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 156
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 250
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 264
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .registers 10
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .line 164
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 165
    return-void
.end method

.method private static blacklist hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "localeStringForCompatibility"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o initStyle(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    if-nez p1, :cond_16

    .line 202
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 203
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 204
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 205
    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 206
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 207
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 208
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 209
    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 210
    return-void

    .line 213
    :cond_16
    const v2, 0x11200f0

    .line 214
    .local v2, "defStyleAttr":I
    sget-object v3, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 216
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 218
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 220
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    const v2, 0x11200ef

    .line 223
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 225
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    .line 227
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    .line 229
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    const v2, 0x11200ee

    .line 232
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 234
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 236
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 238
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    const v2, 0x11200ed

    .line 241
    sget-object v7, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v4, v7, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 245
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 247
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 358
    instance-of v0, p1, Landroid/text/style/SuggestionSpan;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 359
    move-object v0, p1

    check-cast v0, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v0

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    .line 361
    :cond_12
    return v1
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 312
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public whitelist getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocaleObject()Ljava/util/Locale;
    .registers 2

    .line 296
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

.method public greylist getNotificationTargetClassName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 348
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 353
    const/16 v0, 0x13

    return v0
.end method

.method public whitelist getSuggestions()[Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUnderlineColor()I
    .registers 7

    .line 422
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    .line 423
    .local v1, "misspelled":Z
    :goto_b
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v3

    .line 424
    .local v4, "easy":Z
    :goto_12
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_18

    move v5, v2

    goto :goto_19

    :cond_18
    move v5, v3

    .line 425
    .local v5, "autoCorrection":Z
    :goto_19
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    move v0, v2

    .line 426
    .local v0, "grammarError":Z
    if-eqz v4, :cond_2f

    .line 427
    if-eqz v0, :cond_27

    .line 428
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 429
    :cond_27
    if-eqz v1, :cond_2c

    .line 430
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 432
    :cond_2c
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v2

    .line 434
    :cond_2f
    if-eqz v5, :cond_34

    .line 435
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v2

    .line 436
    :cond_34
    if-eqz v1, :cond_39

    .line 437
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v2

    .line 438
    :cond_39
    if-eqz v0, :cond_3e

    .line 439
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    return v2

    .line 441
    :cond_3e
    return v3
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 366
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public greylist-max-r notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    const-string v0, "SuggestionSpan"

    const-string/jumbo v1, "notifySelection() is deprecated.  Does nothing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public whitelist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 316
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 317
    return-void
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .registers 8
    .param p1, "tp"    # Landroid/text/TextPaint;

    .line 390
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_b

    :cond_a
    move v1, v2

    .line 391
    .local v1, "misspelled":Z
    :goto_b
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v2

    .line 392
    .local v4, "easy":Z
    :goto_12
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_18

    move v5, v3

    goto :goto_19

    :cond_18
    move v5, v2

    .line 393
    .local v5, "autoCorrection":Z
    :goto_19
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1e

    move v2, v3

    :cond_1e
    move v0, v2

    .line 394
    .local v0, "grammarError":Z
    if-eqz v4, :cond_43

    .line 395
    if-nez v1, :cond_2d

    if-nez v0, :cond_2d

    .line 396
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_60

    .line 397
    :cond_2d
    iget v2, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v2, :cond_60

    .line 400
    if-eqz v0, :cond_3b

    .line 401
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_60

    .line 404
    :cond_3b
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_60

    .line 407
    :cond_43
    if-eqz v5, :cond_4d

    .line 408
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_60

    .line 409
    :cond_4d
    if-eqz v1, :cond_57

    .line 410
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_60

    .line 411
    :cond_57
    if-eqz v0, :cond_60

    .line 412
    iget v2, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v2, v3}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 414
    :cond_60
    :goto_60
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 326
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 327
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 331
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 332
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 342
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mGrammarErrorUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 344
    return-void
.end method
