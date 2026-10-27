.class public Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
.super Ljava/lang/Object;
.source "UseCasePriorityHints.java"


# static fields
.field private static final DEBUG:Z

.field private static final INVALID_PRIORITY_VALUE:I = -0x1

.field private static final INVALID_USE_CASE:I = -0x1

.field private static final NS:Ljava/lang/String;

.field private static final PATH_TO_VENDOR_CONFIG_XML:Ljava/lang/String; = "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

.field private static final TAG:Ljava/lang/String; = "UseCasePriorityHints"


# instance fields
.field private mDefaultBackground:I

.field private mDefaultForeground:I

.field mPriorityHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field mVendorDefinedUseCase:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-string v0, "UseCasePriorityHints"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    .line 62
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 63
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return-void
.end method

.method private addNewUseCasePriority(III)V
    .registers 6
    .param p1, "useCase"    # I
    .param p2, "fgPriority"    # I
    .param p3, "bgPriority"    # I

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 202
    .local v0, "priorities":[I
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method private static formatTypeToNum(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I
    .registers 5
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 207
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "useCaseName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_54

    :cond_d
    goto :goto_40

    :sswitch_e
    const-string v1, "USE_CASE_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_41

    :sswitch_18
    const-string v1, "USE_CASE_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_41

    :sswitch_22
    const-string v1, "USE_CASE_LIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    goto :goto_41

    :sswitch_2c
    const-string v1, "USE_CASE_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_41

    :sswitch_36
    const-string v1, "USE_CASE_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_41

    :goto_40
    move v1, v2

    :goto_41
    packed-switch v1, :pswitch_data_6a

    .line 220
    return v2

    .line 218
    :pswitch_45
    const/16 v1, 0x1f4

    return v1

    .line 216
    :pswitch_48
    const/16 v1, 0x190

    return v1

    .line 214
    :pswitch_4b
    const/16 v1, 0x12c

    return v1

    .line 212
    :pswitch_4e
    const/16 v1, 0xc8

    return v1

    .line 210
    :pswitch_51
    const/16 v1, 0x64

    return v1

    :sswitch_data_54
    .sparse-switch
        -0x34bcc93b -> :sswitch_36
        0x16873572 -> :sswitch_2c
        0x48d65bc3 -> :sswitch_22
        0x48d97154 -> :sswitch_18
        0x76aab968 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
    .end packed-switch
.end method

.method private static isPredefinedUseCase(I)Z
    .registers 2
    .param p0, "useCase"    # I

    .line 225
    sparse-switch p0, :sswitch_data_8

    .line 233
    const/4 v0, 0x0

    return v0

    .line 231
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x64 -> :sswitch_5
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_5
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method private readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I
    .registers 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readUseCase(Landroid/util/TypedXmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "config"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_8
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9e

    .line 143
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 144
    goto :goto_8

    .line 146
    :cond_16
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "useCaseDefault"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "bgPriority"

    const-string v5, "fgPriority"

    if-eqz v3, :cond_3c

    .line 149
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    .line 150
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    iput v3, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    .line 151
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 152
    sget-object v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 153
    :cond_3c
    const-string/jumbo v3, "useCasePreDefined"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 154
    const-string/jumbo v3, "type"

    invoke-static {v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->formatTypeToNum(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    .line 155
    .local v3, "useCase":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_57

    .line 156
    const-string v2, "UseCasePriorityHints"

    const-string v4, "Wrong predefined use case name given in the vendor config."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    goto :goto_8

    .line 159
    :cond_57
    nop

    .line 160
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v5

    .line 161
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v4

    .line 159
    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 162
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 163
    sget-object v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 164
    .end local v3    # "useCase":I
    :cond_6c
    const-string/jumbo v3, "useCaseVendor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 165
    const-string v3, "id"

    invoke-direct {p0, v3, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v3

    .line 166
    .restart local v3    # "useCase":I
    nop

    .line 167
    invoke-direct {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v5

    .line 168
    invoke-direct {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readAttributeToInt(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)I

    move-result v4

    .line 166
    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 169
    iget-object v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 171
    sget-object v4, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->NS:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v0}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 173
    .end local v3    # "useCase":I
    :cond_99
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->skip(Landroid/util/TypedXmlPullParser;)V

    .line 175
    .end local v0    # "name":Ljava/lang/String;
    :goto_9c
    goto/16 :goto_8

    .line 176
    :cond_9e
    return-void
.end method

.method private skip(Landroid/util/TypedXmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 182
    const/4 v0, 0x1

    .line 183
    .local v0, "depth":I
    :goto_8
    if-eqz v0, :cond_18

    .line 184
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    goto :goto_17

    .line 186
    :pswitch_12
    add-int/lit8 v0, v0, -0x1

    .line 187
    goto :goto_17

    .line 189
    :pswitch_15
    add-int/lit8 v0, v0, 0x1

    .line 190
    :goto_17
    goto :goto_8

    .line 193
    :cond_18
    return-void

    .line 180
    .end local v0    # "depth":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method getBackgroundPriority(I)I
    .registers 4
    .param p1, "useCase"    # I

    .line 73
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 74
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 76
    :cond_20
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    return v0
.end method

.method getForegroundPriority(I)I
    .registers 4
    .param p1, "useCase"    # I

    .line 66
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 67
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 69
    :cond_20
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    return v0
.end method

.method isDefinedUseCase(I)Z
    .registers 4
    .param p1, "useCase"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mVendorDefinedUseCase:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isPredefinedUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public parse()V
    .registers 6

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/etc/tunerResourceManagerUseCaseConfig.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "UseCasePriorityHints"

    if-eqz v1, :cond_48

    .line 91
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parseInternal(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_17} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_17} :catch_18

    .line 93
    return-void

    .line 96
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_18
    move-exception v1

    .line 97
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse vendor file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_47

    .line 94
    :catch_30
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading vendor file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :goto_47
    goto :goto_75

    .line 100
    :cond_48
    sget-boolean v1, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 101
    const-string/jumbo v1, "no vendor priority configuration available. Using default priority"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_52
    const/16 v1, 0xb4

    const/16 v2, 0x64

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 104
    const/16 v1, 0x1c2

    const/16 v2, 0xc8

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 105
    const/16 v1, 0x1e0

    const/16 v2, 0x12c

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 106
    const/16 v1, 0x1ea

    const/16 v2, 0x190

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 107
    const/16 v1, 0x258

    const/16 v2, 0x1f4

    invoke-direct {p0, v2, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->addNewUseCasePriority(III)V

    .line 109
    :goto_75
    return-void
.end method

.method protected parseInternal(Ljava/io/InputStream;)V
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 119
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 120
    invoke-direct {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->readUseCase(Landroid/util/TypedXmlPullParser;)V

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_d} :catch_90

    .line 124
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    nop

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8f

    .line 126
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 127
    .local v1, "useCase":I
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mPriorityHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 128
    .local v2, "priorities":[I
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->DEBUG:Z

    if-eqz v3, :cond_8c

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{defaultFg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultForeground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultBg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->mDefaultBackground:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UseCasePriorityHints"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{useCase="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", fg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "useCase":I
    .end local v2    # "priorities":[I
    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 137
    .end local v0    # "i":I
    :cond_8f
    return-void

    .line 122
    :catch_90
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
