.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private blacklist mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private blacklist mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentFilter:Landroid/filterfw/core/Filter;

.field private blacklist mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private blacklist mFactory:Landroid/filterfw/core/FilterFactory;

.field private blacklist mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist applySettings()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 455
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v1, "synced"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 457
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_90

    .line 458
    :cond_39
    const-string/jumbo v1, "unsynced"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 459
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_90

    .line 460
    :cond_49
    const-string/jumbo v1, "off"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 461
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_90

    .line 463
    :cond_59
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown autobranch setting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_78
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 466
    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 467
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    .line 471
    :goto_90
    goto/16 :goto_a

    .line 469
    :cond_92
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown @setting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_b1
    return-void
.end method

.method private blacklist bindExternal(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 427
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    nop

    .line 434
    return-void

    .line 430
    :cond_15
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkReferences()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 448
    goto :goto_a

    .line 444
    :cond_1f
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', which is not declared @external in graph file!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_3e
    return-void
.end method

.method private blacklist executeCommands()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    .line 486
    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    .line 487
    goto :goto_6

    .line 488
    :cond_16
    return-void
.end method

.method private blacklist expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_7

    .line 482
    return-void

    .line 478
    :cond_7
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' must have a value of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 479
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", but found a value of type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parseString(Ljava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 170
    move-object/from16 v1, p0

    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 171
    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 172
    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 173
    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 174
    const-string v2, "[a-zA-Z\\.]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 175
    const-string v2, "[a-zA-Z\\./:]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 176
    const-string v2, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 177
    const-string v12, "=>"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 178
    const-string v14, ";"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 179
    const-string v2, "[a-zA-Z0-9\\-_]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 199
    nop

    .line 200
    new-instance v3, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 202
    nop

    .line 203
    nop

    .line 204
    nop

    .line 205
    nop

    .line 206
    const/16 v16, 0x0

    const/4 v0, 0x0

    move-object/from16 p1, v0

    move-object/from16 v4, p1

    move-object v5, v4

    move-object/from16 v17, v5

    move/from16 v0, v16

    .line 209
    :goto_56
    invoke-virtual {v3}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v18

    move-object/from16 v19, v6

    if-nez v18, :cond_346

    .line 210
    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_356

    move-object/from16 v20, v9

    move-object/from16 v9, p1

    move-object/from16 p1, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v14

    move-object v14, v2

    move-object/from16 v2, v19

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_337

    .line 331
    :pswitch_7a
    invoke-virtual {v3, v15, v14}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    move-object/from16 v20, v14

    move/from16 v0, v16

    move-object/from16 v6, v17

    move-object v14, v2

    move-object/from16 v17, v15

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, p1

    goto/16 :goto_337

    .line 324
    :pswitch_8f
    invoke-direct {v1, v3, v15}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 325
    iget-object v6, v1, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v6, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 326
    nop

    .line 327
    move-object/from16 v20, v14

    move-object/from16 v6, v17

    const/16 v0, 0x10

    move-object v14, v2

    move-object/from16 v17, v15

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, p1

    goto/16 :goto_337

    .line 317
    :pswitch_ab
    const-string v0, "<external-identifier>"

    invoke-virtual {v3, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-direct {v1, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 319
    nop

    .line 320
    move-object/from16 v20, v14

    move-object/from16 v6, v17

    const/16 v0, 0x10

    move-object v14, v2

    move-object/from16 v17, v15

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, p1

    goto/16 :goto_337

    .line 310
    :pswitch_c7
    invoke-direct {v1, v3, v15}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 311
    iget-object v6, v1, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v6, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 312
    nop

    .line 313
    move-object/from16 v20, v14

    move-object/from16 v6, v17

    const/16 v0, 0x10

    move-object v14, v2

    move-object/from16 v17, v15

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v5

    move-object v5, v9

    move-object/from16 v9, p1

    goto/16 :goto_337

    .line 299
    :pswitch_e3
    const-string v0, "[<target-port-name>]"

    invoke-virtual {v3, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v21, v2

    add-int/lit8 v2, v20, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v6, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, v5

    move-object v5, v0

    new-instance v0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move-object/from16 v20, v15

    move-object v15, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v9

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    nop

    .line 306
    move-object v6, v4

    move-object/from16 v5, v21

    const/16 v0, 0x10

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 294
    :pswitch_11d
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v17, v15

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v15, v3

    move-object v2, v4

    move-object v3, v5

    const-string v0, "<target-filter-name>"

    invoke-virtual {v15, v14, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    nop

    .line 296
    const/16 v4, 0xc

    move-object v6, v0

    move v0, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 289
    :pswitch_13b
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    invoke-virtual {v15, v13, v12}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    nop

    .line 291
    const/16 v0, 0xb

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 282
    :pswitch_157
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    const-string v0, "[<source-port-name>]"

    invoke-virtual {v15, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    nop

    .line 285
    const/16 v3, 0xa

    move v5, v3

    move-object v3, v0

    move v0, v5

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 277
    :pswitch_181
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v4, v17

    move-object/from16 v9, p1

    move-object v14, v2

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string v0, "<source-filter-name>"

    invoke-virtual {v15, v14, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    nop

    .line 279
    const/16 v2, 0x9

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v0

    move v0, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 272
    :pswitch_1a0
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string/jumbo v0, "}"

    invoke-virtual {v15, v7, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    nop

    .line 274
    move-object v6, v4

    move/from16 v0, v16

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 265
    :pswitch_1bf
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    invoke-direct {v1, v15, v7}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 266
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v6, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v6, v1, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    nop

    .line 268
    const/4 v0, 0x7

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 260
    :pswitch_1e5
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string/jumbo v0, "{"

    invoke-virtual {v15, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    nop

    .line 262
    const/4 v0, 0x6

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 253
    :pswitch_203
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string v0, "<filter-name>"

    invoke-virtual {v15, v14, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v6, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    invoke-direct {v6, v1, v9, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    nop

    .line 256
    const/4 v0, 0x5

    move-object v6, v4

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 248
    :pswitch_22b
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string v0, "<class-name>"

    invoke-virtual {v15, v14, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    nop

    .line 250
    const/4 v5, 0x4

    move-object v9, v0

    move-object v6, v4

    move v0, v5

    move-object/from16 v5, v21

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 241
    :pswitch_249
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string v0, "<library-name>"

    invoke-virtual {v15, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v5, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v6, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v6, v1, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    nop

    .line 244
    move-object v6, v4

    move-object/from16 v5, v21

    const/16 v0, 0x10

    move-object v4, v2

    move-object/from16 v2, v19

    goto/16 :goto_337

    .line 234
    :pswitch_272
    move-object/from16 v21, v9

    move-object/from16 v20, v14

    move-object/from16 v9, p1

    move-object v14, v2

    move-object v2, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    const-string v0, "<package-name>"

    move-object/from16 v5, v21

    invoke-virtual {v15, v5, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v6, v1, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    move-object/from16 p1, v2

    new-instance v2, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v2, v1, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    nop

    .line 237
    move-object v6, v4

    move-object/from16 v2, v19

    const/16 v0, 0x10

    move-object/from16 v4, p1

    goto/16 :goto_337

    .line 212
    :pswitch_29e
    move-object/from16 v20, v9

    move-object/from16 v9, p1

    move-object/from16 p1, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v15

    move-object v15, v3

    move-object v3, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v14

    move-object v14, v2

    const-string v0, "<command>"

    move-object/from16 v2, v19

    invoke-virtual {v15, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v6, "@import"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c5

    .line 214
    move-object v6, v4

    const/4 v0, 0x1

    move-object/from16 v4, p1

    goto/16 :goto_337

    .line 215
    :cond_2c5
    const-string v6, "@library"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d3

    .line 216
    const/4 v0, 0x2

    move-object v6, v4

    move-object/from16 v4, p1

    goto/16 :goto_337

    .line 217
    :cond_2d3
    const-string v6, "@filter"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e0

    .line 218
    const/4 v0, 0x3

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_337

    .line 219
    :cond_2e0
    const-string v6, "@connect"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ee

    .line 220
    const/16 v0, 0x8

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_337

    .line 221
    :cond_2ee
    const-string v6, "@set"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2fc

    .line 222
    const/16 v0, 0xd

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_337

    .line 223
    :cond_2fc
    const-string v6, "@external"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30a

    .line 224
    const/16 v0, 0xe

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_337

    .line 225
    :cond_30a
    const-string v6, "@setting"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_318

    .line 226
    const/16 v0, 0xf

    move-object v6, v4

    move-object/from16 v4, p1

    goto :goto_337

    .line 228
    :cond_318
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :goto_337
    move-object/from16 p1, v9

    move-object v9, v5

    move-object v5, v3

    move-object v3, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v14

    move-object/from16 v14, v20

    goto/16 :goto_56

    .line 338
    :cond_346
    const/16 v1, 0x10

    if-eq v0, v1, :cond_355

    if-nez v0, :cond_34d

    goto :goto_355

    .line 339
    :cond_34d
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v1, "Unexpected end of input!"

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_355
    :goto_355
    return-void

    :pswitch_data_356
    .packed-switch 0x0
        :pswitch_29e
        :pswitch_272
        :pswitch_249
        :pswitch_22b
        :pswitch_203
        :pswitch_1e5
        :pswitch_1bf
        :pswitch_1a0
        :pswitch_181
        :pswitch_157
        :pswitch_13b
        :pswitch_11d
        :pswitch_e3
        :pswitch_c7
        :pswitch_ab
        :pswitch_8f
        :pswitch_7a
    .end packed-switch
.end method

.method private blacklist readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "="

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 359
    const-string v4, ";"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 360
    const-string v6, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 361
    const-string v7, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 362
    const-string v8, "[0-9]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 363
    const-string v9, "[0-9]*\\.[0-9]+f?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 364
    const-string v10, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 365
    const-string/jumbo v11, "true|false"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 367
    nop

    .line 368
    new-instance v12, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v12}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 369
    nop

    .line 370
    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 372
    :goto_3e
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v16

    if-nez v16, :cond_10e

    if-eqz p2, :cond_4c

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v16

    if-nez v16, :cond_10e

    .line 373
    :cond_4c
    const/4 v14, 0x1

    packed-switch v15, :pswitch_data_138

    move-object/from16 v18, v4

    goto/16 :goto_10a

    .line 410
    :pswitch_54
    invoke-virtual {v1, v5, v4}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-object/from16 v18, v4

    const/4 v15, 0x0

    goto/16 :goto_10a

    .line 385
    :pswitch_5c
    invoke-virtual {v1, v7}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_73

    .line 386
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v4

    add-int/lit8 v4, v17, -0x1

    invoke-virtual {v15, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e9

    .line 387
    :cond_73
    move-object/from16 v18, v4

    invoke-virtual {v1, v10}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 388
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object v14, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v14, :cond_8e

    .line 390
    iget-object v14, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v14, v4}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_8f

    .line 391
    :cond_8e
    const/4 v14, 0x0

    .line 392
    :goto_8f
    if-eqz v14, :cond_95

    .line 396
    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    goto :goto_e9

    .line 393
    :cond_95
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object reference to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_b4
    invoke-virtual {v1, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c6

    .line 398
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 399
    :cond_c6
    invoke-virtual {v1, v9}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d8

    .line 400
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e9

    .line 401
    :cond_d8
    invoke-virtual {v1, v8}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v13, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_e9
    nop

    .line 407
    const/4 v15, 0x3

    goto :goto_10a

    .line 404
    :cond_ec
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v2, "<value>"

    invoke-virtual {v1, v2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_f8
    move-object/from16 v18, v4

    invoke-virtual {v1, v3, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    nop

    .line 382
    const/4 v15, 0x2

    goto :goto_10a

    .line 375
    :pswitch_100
    move-object/from16 v18, v4

    const-string v4, "<identifier>"

    invoke-virtual {v1, v6, v4}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 376
    nop

    .line 377
    move v15, v14

    .line 412
    :goto_10a
    move-object/from16 v4, v18

    goto/16 :goto_3e

    .line 417
    :cond_10e
    if-eqz v15, :cond_137

    const/4 v0, 0x3

    if-ne v15, v0, :cond_114

    goto :goto_137

    .line 418
    :cond_114
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected end of assignments on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 419
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_137
    :goto_137
    return-object v12

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_100
        :pswitch_f8
        :pswitch_5c
        :pswitch_54
    .end packed-switch
.end method

.method private blacklist reset()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 167
    return-void
.end method


# virtual methods
.method public blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 150
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 157
    return-object v0
.end method

.method public blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 345
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 347
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object p1

    return-object p1
.end method
