.class Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
.super Landroid/util/SparseArray;
.source "CompanionApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPackageMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 310
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 361
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->keyAt(I)I

    move-result v1

    .line 363
    .local v1, "userId":I
    invoke-virtual {p0, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 364
    .local v2, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const-string v4, "    u"

    if-eqz v3, :cond_2a

    .line 365
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v5, ": <empty>\n"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 368
    :cond_2a
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 369
    .local v5, "packageValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 370
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 371
    .local v7, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, "\\"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    .line 372
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    .line 373
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 374
    .end local v5    # "packageValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_32

    .line 361
    .end local v1    # "userId":I
    .end local v2    # "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    .end local v0    # "i":I
    :cond_75
    return-void
.end method


# virtual methods
.method containsValueForPackage(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 324
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 325
    .local v0, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_10

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method dump()V
    .registers 12

    .line 340
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->size()I

    move-result v0

    const-string v1, "CompanionDevice_ApplicationController"

    if-nez v0, :cond_e

    .line 341
    const-string v0, "<empty>"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 345
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8c

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->keyAt(I)I

    move-result v2

    .line 347
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 348
    .local v3, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const-string/jumbo v5, "u"

    if-eqz v4, :cond_42

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": <empty>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_42
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 353
    .local v6, "packageValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 354
    .local v7, "packageName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 355
    .local v8, "value":Ljava/lang/Object;, "TT;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v6    # "packageValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_4a

    .line 345
    .end local v2    # "userId":I
    .end local v3    # "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 358
    .end local v0    # "i":I
    :cond_8c
    return-void
.end method

.method getValueForPackage(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 330
    .local v0, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method removePackage(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 334
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 335
    .local v0, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 336
    :cond_a
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;, "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 315
    .local v0, "forUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_11

    .line 316
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->put(ILjava/lang/Object;)V

    .line 320
    :cond_11
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method
