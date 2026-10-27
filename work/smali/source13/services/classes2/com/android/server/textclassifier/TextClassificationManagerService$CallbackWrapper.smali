.class final Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 3
    .param p1, "wrapped"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 1200
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    .line 1201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/textclassifier/ITextClassifierCallback;

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    .line 1202
    return-void
.end method

.method private static changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1327
    invoke-static {}, Lcom/android/server/textclassifier/IconsUriHelper;->getInstance()Lcom/android/server/textclassifier/IconsUriHelper;

    move-result-object v0

    .line 1328
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/textclassifier/IconsUriHelper;->getContentUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1329
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

.method private static rewriteConversationActionsIcons(Landroid/os/Bundle;)V
    .registers 10
    .param p0, "result"    # Landroid/os/Bundle;

    .line 1281
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    .line 1282
    .local v0, "convActions":Landroid/view/textclassifier/ConversationActions;
    const/4 v1, 0x0

    .line 1283
    .local v1, "rewrite":Z
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getConversationActions()Ljava/util/List;

    move-result-object v2

    .line 1284
    .local v2, "origConvActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationAction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1285
    .local v3, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1286
    .local v4, "validConvActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationAction;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v3, :cond_44

    .line 1287
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/ConversationAction;

    .line 1289
    .local v6, "convAction":Landroid/view/textclassifier/ConversationAction;
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 1290
    const/4 v1, 0x1

    .line 1291
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v7

    .line 1292
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v7

    .line 1293
    invoke-virtual {v7}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    move-result-object v7

    .local v7, "validConvAction":Landroid/view/textclassifier/ConversationAction;
    goto :goto_3e

    .line 1295
    .end local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    :cond_3d
    move-object v7, v6

    .line 1297
    .restart local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    :goto_3e
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    .end local v6    # "convAction":Landroid/view/textclassifier/ConversationAction;
    .end local v7    # "validConvAction":Landroid/view/textclassifier/ConversationAction;
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1299
    .end local v5    # "i":I
    :cond_44
    if-eqz v1, :cond_52

    .line 1300
    new-instance v5, Landroid/view/textclassifier/ConversationActions;

    .line 1302
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1300
    invoke-static {p0, v5}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 1304
    :cond_52
    return-void
.end method

.method private static rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;
    .registers 8
    .param p0, "textClassification"    # Landroid/view/textclassifier/TextClassification;

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "rewrite":Z
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    .line 1249
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1250
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1251
    .local v3, "validActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_2a

    .line 1252
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    .line 1254
    .local v5, "action":Landroid/app/RemoteAction;
    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1255
    const/4 v0, 0x1

    .line 1256
    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v6

    .local v6, "validAction":Landroid/app/RemoteAction;
    goto :goto_24

    .line 1258
    .end local v6    # "validAction":Landroid/app/RemoteAction;
    :cond_23
    move-object v6, v5

    .line 1260
    .restart local v6    # "validAction":Landroid/app/RemoteAction;
    :goto_24
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    .end local v5    # "action":Landroid/app/RemoteAction;
    .end local v6    # "validAction":Landroid/app/RemoteAction;
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1262
    .end local v4    # "i":I
    :cond_2a
    if-eqz v0, :cond_3e

    .line 1267
    nop

    .line 1264
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->toBuilder()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v4

    .line 1265
    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification$Builder;->clearActions()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v4

    .line 1266
    invoke-virtual {v4, v3}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v4

    .line 1267
    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v4

    goto :goto_3f

    .line 1268
    :cond_3e
    const/4 v4, 0x0

    .line 1262
    :goto_3f
    return-object v4
.end method

.method private static rewriteTextClassificationIcons(Landroid/os/Bundle;)V
    .registers 3
    .param p0, "result"    # Landroid/os/Bundle;

    .line 1272
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 1273
    .local v0, "classification":Landroid/view/textclassifier/TextClassification;
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    .line 1275
    .local v1, "newTextClassification":Landroid/view/textclassifier/TextClassification;
    if-eqz v1, :cond_f

    .line 1276
    invoke-static {p0, v1}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 1278
    :cond_f
    return-void
.end method

.method private static rewriteTextSelectionIcons(Landroid/os/Bundle;)V
    .registers 4
    .param p0, "result"    # Landroid/os/Bundle;

    .line 1224
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    .line 1225
    .local v0, "textSelection":Landroid/view/textclassifier/TextSelection;
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1226
    return-void

    .line 1228
    :cond_d
    nop

    .line 1229
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    .line 1230
    .local v1, "newTextClassification":Landroid/view/textclassifier/TextClassification;
    if-nez v1, :cond_19

    .line 1231
    return-void

    .line 1233
    :cond_19
    nop

    .line 1235
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->toBuilder()Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v2

    .line 1236
    invoke-virtual {v2, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v2

    .line 1237
    invoke-virtual {v2}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v2

    .line 1233
    invoke-static {p0, v2}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 1238
    return-void
.end method

.method private static shouldRewriteIcon(Landroid/app/RemoteAction;)Z
    .registers 3
    .param p0, "action"    # Landroid/app/RemoteAction;

    .line 1322
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;
    .registers 6
    .param p0, "action"    # Landroid/app/RemoteAction;

    .line 1307
    new-instance v0, Landroid/app/RemoteAction;

    .line 1308
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1309
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1310
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1311
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1312
    .local v0, "newAction":Landroid/app/RemoteAction;
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 1313
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 1314
    return-object v0
.end method


# virtual methods
.method public onFailure()V
    .registers 4

    .line 1335
    :try_start_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {v0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1338
    goto :goto_e

    .line 1336
    :catch_6
    move-exception v0

    .line 1337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TextClassificationManagerService"

    const-string v2, "Callback error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Bundle;

    .line 1206
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1207
    .local v0, "parcelled":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/view/textclassifier/TextClassification;

    if-eqz v1, :cond_c

    .line 1208
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 1209
    :cond_c
    instance-of v1, v0, Landroid/view/textclassifier/ConversationActions;

    if-eqz v1, :cond_14

    .line 1210
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteConversationActionsIcons(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 1211
    :cond_14
    instance-of v1, v0, Landroid/view/textclassifier/TextSelection;

    if-eqz v1, :cond_1b

    .line 1212
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextSelectionIcons(Landroid/os/Bundle;)V

    .line 1217
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {v1, p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 1220
    goto :goto_29

    .line 1218
    :catch_21
    move-exception v1

    .line 1219
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextClassificationManagerService"

    const-string v3, "Callback error"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method
