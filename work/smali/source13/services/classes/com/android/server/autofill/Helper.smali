.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Helper$ViewNodeFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillHelper"

.field public static sDebug:Z

.field public static sFullScreenMode:Ljava/lang/Boolean;

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 71
    sput-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V
    .registers 6
    .param p0, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "autofillableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;Z)V"
        }
    .end annotation

    .line 321
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_f

    .line 322
    :cond_8
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_f
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v0

    .line 325
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_20

    .line 326
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v2

    .line 327
    .local v2, "child":Landroid/app/assist/AssistStructure$ViewNode;
    invoke-static {v2, p1, p2}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 325
    .end local v2    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 329
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method private static checkRemoteViewUriPermissions(ILandroid/widget/RemoteViews;)Z
    .registers 4
    .param p0, "userId"    # I
    .param p1, "rView"    # Landroid/widget/RemoteViews;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    .local v0, "permissionsOk":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v1, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    return v1
.end method

.method static containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 360
    const/4 v0, -0x1

    .line 361
    .local v0, "prevIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_1a

    aget-char v5, v1, v4

    .line 362
    .local v5, "ch":C
    add-int/lit8 v6, v0, 0x1

    invoke-static {p0, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 363
    .local v6, "index":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_16

    .line 364
    return v3

    .line 366
    :cond_16
    move v0, v6

    .line 361
    .end local v5    # "ch":C
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 368
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method static createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .registers 12
    .param p0, "saveInfo"    # Landroid/service/autofill/SaveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/SaveInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;"
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 335
    :cond_4
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    .line 336
    .local v1, "sanitizerKeys":[Landroid/service/autofill/InternalSanitizer;
    if-nez v1, :cond_b

    return-object v0

    .line 338
    :cond_b
    array-length v0, v1

    .line 339
    .local v0, "size":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 340
    .local v2, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v4, "AutofillHelper"

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provided "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sanitizers"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_33
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 342
    .local v3, "sanitizerValues":[[Landroid/view/autofill/AutofillId;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    if-ge v5, v0, :cond_80

    .line 343
    aget-object v6, v1, v5

    .line 344
    .local v6, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    aget-object v7, v3, v5

    .line 345
    .local v7, "ids":[Landroid/view/autofill/AutofillId;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_71

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sanitizer #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") for ids "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 347
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 346
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_71
    array-length v8, v7

    const/4 v9, 0x0

    :goto_73
    if-ge v9, v8, :cond_7d

    aget-object v10, v7, v9

    .line 350
    .local v10, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v10    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_73

    .line 342
    .end local v6    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    .end local v7    # "ids":[Landroid/view/autofill/AutofillId;
    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 353
    .end local v5    # "i":I
    :cond_80
    return-object v2
.end method

.method private static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 7
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "filter"    # Lcom/android/server/autofill/Helper$ViewNodeFilter;

    .line 245
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 246
    .local v0, "nodesToProcess":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/app/assist/AssistStructure$ViewNode;>;"
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 247
    .local v1, "numWindowNodes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 248
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 250
    .end local v2    # "i":I
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/assist/AssistStructure$ViewNode;

    .line 252
    .local v2, "node":Landroid/app/assist/AssistStructure$ViewNode;
    invoke-interface {p1, v2}, Lcom/android/server/autofill/Helper$ViewNodeFilter;->matches(Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 253
    return-object v2

    .line 255
    :cond_2d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 256
    invoke-virtual {v2, v3}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 258
    .end local v2    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v3    # "i":I
    :cond_3e
    goto :goto_1a

    .line 260
    :cond_3f
    const/4 v2, 0x0

    return-object v2
.end method

.method public static findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 238
    new-instance v0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    return-object v0
.end method

.method static getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;
    .registers 7
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "autofillableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    .line 312
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 313
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 314
    .local v3, "node":Landroid/app/assist/AssistStructure$WindowNode;
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-static {v4, v0, p1}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    .line 312
    .end local v3    # "node":Landroid/app/assist/AssistStructure$WindowNode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 316
    .end local v2    # "i":I
    :cond_1a
    return-object v0
.end method

.method static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .registers 8
    .param p0, "dataset"    # Landroid/service/autofill/Dataset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    if-nez v0, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 188
    .local v2, "size":I
    :goto_10
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 189
    .local v3, "fields":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    if-ge v4, v2, :cond_2a

    .line 190
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 192
    .end local v4    # "i":I
    :cond_2a
    return-object v3
.end method

.method static getNumericValue(Landroid/metrics/LogMaker;I)I
    .registers 4
    .param p0, "log"    # Landroid/metrics/LogMaker;
    .param p1, "tag"    # I

    .line 296
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v0

    .line 297
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_a

    .line 298
    const/4 v1, 0x0

    return v1

    .line 300
    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method static synthetic lambda$checkRemoteViewUriPermissions$0(ILjava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .registers 8
    .param p0, "userId"    # I
    .param p1, "permissionsOk"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 90
    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 91
    .local v0, "uriOwnerId":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    .line 92
    .local v3, "allowed":Z
    :goto_b
    if-eqz v3, :cond_14

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    return-void
.end method

.method static synthetic lambda$findViewNodeByAutofillId$1(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 3
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 239
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$sanitizeUrlBar$2([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 3
    .param p0, "urlBarIds"    # [Ljava/lang/String;
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 275
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 8
    .param p0, "category"    # I
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "compatMode"    # Z

    .line 218
    new-instance v0, Landroid/content/ComponentName;

    .line 219
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v0, "sanitizedComponentName":Landroid/content/ComponentName;
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 220
    return-object v1
.end method

.method private static newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 7
    .param p0, "category"    # I
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "sessionId"    # I
    .param p3, "compatMode"    # Z

    .line 198
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 199
    const/16 v1, 0x38c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 201
    .local v0, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_21

    .line 202
    const/16 v1, 0x586

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 204
    :cond_21
    return-object v0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 6
    .param p0, "category"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .param p4, "compatMode"    # Z

    .line 210
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method public static paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 179
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 225
    if-nez p1, :cond_9

    .line 226
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 228
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "_chars"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    :goto_15
    return-void
.end method

.method public static sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6
    .param p0, "rView"    # Landroid/widget/RemoteViews;

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 111
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 113
    .local v1, "userId":I
    invoke-static {v1, p0}, Lcom/android/server/autofill/Helper;->checkRemoteViewUriPermissions(ILandroid/widget/RemoteViews;)Z

    move-result v2

    .line 114
    .local v2, "ok":Z
    if-nez v2, :cond_2d

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeRemoteView() user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tried accessing resource that does not belong to them"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2d
    if-eqz v2, :cond_30

    move-object v0, p0

    :cond_30
    return-object v0
.end method

.method public static sanitizeSlice(Landroid/app/slice/Slice;)Landroid/app/slice/Slice;
    .registers 8
    .param p0, "slice"    # Landroid/app/slice/Slice;

    .line 133
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 134
    return-object v0

    .line 137
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 140
    .local v1, "userId":I
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceItem;

    .line 141
    .local v3, "sliceItem":Landroid/app/slice/SliceItem;
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 143
    goto :goto_10

    .line 146
    :cond_2a
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 147
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3d

    .line 148
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3d

    .line 150
    goto :goto_10

    .line 153
    :cond_3d
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 155
    .local v5, "iconUriId":I
    if-eq v5, v1, :cond_67

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sanitizeSlice() user: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " cannot access icons in Slice"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "AutofillHelper"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v0

    .line 159
    .end local v3    # "sliceItem":Landroid/app/slice/SliceItem;
    .end local v4    # "icon":Landroid/graphics/drawable/Icon;
    .end local v5    # "iconUriId":I
    :cond_67
    goto :goto_10

    .line 161
    :cond_68
    return-object p0
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 7
    .param p0, "structure"    # Landroid/app/assist/AssistStructure;
    .param p1, "urlBarIds"    # [Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 277
    .local v0, "urlBarNode":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v0, :cond_6c

    .line 278
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "AutofillHelper"

    if-eqz v2, :cond_3c

    .line 280
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): empty on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3a
    const/4 v2, 0x0

    return-object v2

    .line 283
    :cond_3c
    invoke-virtual {v0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 284
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_6c

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeUrlBar(): id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", domain="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v1    # "domain":Ljava/lang/String;
    :cond_6c
    return-object v0
.end method

.method static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    .line 167
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    .line 170
    .local v0, "array":[Landroid/view/autofill/AutofillId;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 171
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 173
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method
