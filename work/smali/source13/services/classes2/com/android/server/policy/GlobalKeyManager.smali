.class final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DISPATCH_WHEN_NON_INTERACTIVE:Ljava/lang/String; = "dispatchWhenNonInteractive"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mBeganFromNonInteractive:Z

.field private final mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    const-string v0, "GlobalKeyManager"

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_d} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_d} :catch_6c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_65

    .line 126
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_d
    const-string v2, "global_keys"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "version":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_53

    .line 130
    :goto_1e
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 131
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "element":Ljava/lang/String;
    if-nez v3, :cond_28

    .line 133
    goto :goto_53

    .line 135
    :cond_28
    const-string v5, "key"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 136
    const-string v5, "keyCode"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "keyCodeName":Ljava/lang/String;
    const-string v6, "component"

    invoke-interface {v1, v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "componentName":Ljava/lang/String;
    const-string v7, "dispatchWhenNonInteractive"

    .line 139
    invoke-interface {v1, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "dispatchWhenNonInteractive":Ljava/lang/String;
    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    .line 141
    .local v8, "keyCode":I
    if-eqz v8, :cond_52

    .line 142
    iget-object v9, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-direct {v10, p0, v6, v7}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;-><init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_d .. :try_end_52} :catchall_59

    .line 146
    .end local v3    # "element":Ljava/lang/String;
    .end local v5    # "keyCodeName":Ljava/lang/String;
    .end local v6    # "componentName":Ljava/lang/String;
    .end local v7    # "dispatchWhenNonInteractive":Ljava/lang/String;
    .end local v8    # "keyCode":I
    :cond_52
    goto :goto_1e

    .line 148
    .end local v2    # "version":I
    :cond_53
    :goto_53
    if-eqz v1, :cond_79

    :try_start_55
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_58
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_55 .. :try_end_58} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_6c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_65

    goto :goto_79

    .line 124
    :catchall_59
    move-exception v2

    if-eqz v1, :cond_64

    :try_start_5c
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v3

    :try_start_61
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/policy/GlobalKeyManager;
    .end local p1    # "context":Landroid/content/Context;
    :cond_64
    :goto_64
    throw v2
    :try_end_65
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_65} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_65} :catch_6c
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65

    .line 152
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/policy/GlobalKeyManager;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_65
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "I/O exception reading global keys file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6c
    move-exception v1

    .line 151
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "XML parser exception reading global keys file"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_79

    .line 148
    :catch_73
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "global keys file not found"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_79
    :goto_79
    nop

    .line 155
    :goto_7a
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 159
    .local v0, "numKeys":I
    if-nez v0, :cond_11

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping.size=0"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return-void

    .line 163
    :cond_11
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mKeyMapping={"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_60

    .line 165
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string v2, ",dispatchWhenNonInteractive="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 173
    .end local v1    # "i":I
    :cond_60
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_32

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 77
    .local v0, "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    if-eqz v0, :cond_32

    .line 78
    new-instance v2, Lcom/android/server/policy/GlobalKeyIntent;

    invoke-static {v0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    invoke-direct {v2, v3, p3, v4}, Lcom/android/server/policy/GlobalKeyIntent;-><init>(Landroid/content/ComponentName;Landroid/view/KeyEvent;Z)V

    .line 79
    invoke-virtual {v2}, Lcom/android/server/policy/GlobalKeyIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 80
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31

    .line 83
    iput-boolean v1, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 85
    :cond_31
    return v4

    .line 88
    .end local v0    # "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_32
    return v1
.end method

.method setBeganFromNonInteractive()V
    .registers 2

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    .line 112
    return-void
.end method

.method shouldDispatchFromNonInteractive(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .line 102
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    .line 103
    .local v0, "action":Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
    if-nez v0, :cond_c

    .line 104
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_c
    invoke-static {v0}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->-$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z

    move-result v1

    return v1
.end method

.method shouldHandleGlobalKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
