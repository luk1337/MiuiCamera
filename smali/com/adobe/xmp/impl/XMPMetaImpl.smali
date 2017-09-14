.class public Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPMeta;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private packetHeader:Ljava/lang/String;

.field private tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/XMPMetaImpl;->-assertionsDisabled:Z

    .line 36
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 1
    .param p1, "tree"    # Lcom/adobe/xmp/impl/XMPNode;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 78
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1238
    .local v0, "clonedTree":Lcom/adobe/xmp/impl/XMPNode;
    new-instance v1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 288
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 290
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 291
    .local v1, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v4, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 292
    .local v2, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 295
    .end local v1    # "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .end local v2    # "propNode":Lcom/adobe/xmp/impl/XMPNode;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    return v3
.end method

.method public getRoot()Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 15
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "altTextName"    # Ljava/lang/String;
    .param p3, "genericLang"    # Ljava/lang/String;
    .param p4, "specificLang"    # Ljava/lang/String;
    .param p5, "itemValue"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static/range {p1 .. p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 447
    invoke-static/range {p2 .. p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 448
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    .line 450
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 451
    .end local p3    # "genericLang":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 453
    invoke-static/range {p1 .. p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    .line 456
    .local v3, "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v12, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    new-instance v13, Lcom/adobe/xmp/options/PropertyOptions;

    .line 457
    const/16 v14, 0x1e00

    .line 456
    invoke-direct {v13, v14}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v14, 0x1

    invoke-static {v12, v3, v14, v13}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 460
    .local v2, "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    if-nez v2, :cond_1

    .line 462
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v13, "Failed to find or create array node"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 450
    .end local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    .restart local p3    # "genericLang":Ljava/lang/String;
    :cond_0
    const/16 p3, 0x0

    .local p3, "genericLang":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local p3    # "genericLang":Ljava/lang/String;
    .restart local v2    # "arrayNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v3    # "arrayPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    :cond_1
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v12

    if-nez v12, :cond_2

    .line 466
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 468
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 478
    :cond_2
    const/4 v5, 0x0

    .line 479
    .local v5, "haveXDefault":Z
    const/4 v11, 0x0

    .line 481
    .local v11, "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 483
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 484
    .local v4, "currItem":Lcom/adobe/xmp/impl/XMPNode;
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 485
    const-string/jumbo v12, "xml:lang"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 489
    const-string/jumbo v12, "x-default"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 491
    move-object v11, v4

    .line 492
    .local v11, "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    const/4 v5, 0x1

    .line 498
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_4
    if-eqz v11, :cond_5

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    .line 500
    invoke-virtual {v2, v11}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 501
    const/4 v12, 0x1

    invoke-virtual {v2, v12, v11}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 507
    :cond_5
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    .line 508
    .local v9, "result":[Ljava/lang/Object;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 509
    .local v8, "match":I
    const/4 v12, 0x1

    aget-object v7, v9, v12

    check-cast v7, Lcom/adobe/xmp/impl/XMPNode;

    .line 511
    .local v7, "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 513
    .local v10, "specificXDefault":Z
    packed-switch v8, :pswitch_data_0

    .line 611
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v13, "Unexpected result from ChooseLocalizedText"

    .line 612
    const/16 v14, 0x9

    .line 611
    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 472
    .end local v5    # "haveXDefault":Z
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    .end local v8    # "match":I
    .end local v9    # "result":[Ljava/lang/Object;
    .end local v10    # "specificXDefault":Z
    :cond_6
    new-instance v12, Lcom/adobe/xmp/XMPException;

    .line 473
    const-string/jumbo v13, "Specified property is no alt-text array"

    const/16 v14, 0x66

    .line 472
    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 487
    .restart local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v5    # "haveXDefault":Z
    .restart local v6    # "it":Ljava/util/Iterator;
    .local v11, "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_7
    new-instance v12, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v13, "Language qualifier must be first"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 519
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    .end local v11    # "xdItem":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v7    # "itemNode":Lcom/adobe/xmp/impl/XMPNode;
    .restart local v8    # "match":I
    .restart local v9    # "result":[Ljava/lang/Object;
    .restart local v10    # "specificXDefault":Z
    :pswitch_0
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v5, 0x1

    .line 521
    if-nez v10, :cond_8

    .line 523
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_8
    :goto_1
    if-nez v5, :cond_9

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 619
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_9
    return-void

    .line 529
    :pswitch_1
    if-nez v10, :cond_b

    .line 533
    if-eqz v5, :cond_a

    if-eq v11, v7, :cond_a

    if-eqz v11, :cond_a

    .line 534
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 533
    if-eqz v12, :cond_a

    .line 536
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 539
    :cond_a
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 544
    :cond_b
    sget-boolean v12, Lcom/adobe/xmp/impl/XMPMetaImpl;->-assertionsDisabled:Z

    if-nez v12, :cond_d

    if-eqz v5, :cond_c

    if-ne v11, v7, :cond_c

    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_d

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_c
    const/4 v12, 0x0

    goto :goto_2

    .line 545
    :cond_d
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 547
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/xmp/impl/XMPNode;

    .line 548
    .restart local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    if-eq v4, v11, :cond_e

    .line 549
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 550
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 549
    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 554
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 550
    :cond_f
    const/4 v12, 0x0

    goto :goto_4

    .line 557
    .end local v4    # "currItem":Lcom/adobe/xmp/impl/XMPNode;
    :cond_10
    if-eqz v11, :cond_8

    .line 559
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :pswitch_2
    if-eqz v5, :cond_11

    if-eq v11, v7, :cond_11

    if-eqz v11, :cond_11

    .line 569
    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 568
    if-eqz v12, :cond_11

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 573
    :cond_11
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :pswitch_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v10, :cond_8

    .line 584
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 592
    :pswitch_4
    if-eqz v11, :cond_12

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 594
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 596
    :cond_12
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 602
    :pswitch_5
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v10, :cond_8

    .line 605
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 3
    .param p1, "node"    # Lcom/adobe/xmp/impl/XMPNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "newOptions"    # Lcom/adobe/xmp/options/PropertyOptions;
    .param p4, "deleteExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1348
    if-eqz p4, :cond_0

    .line 1350
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->clear()V

    .line 1354
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1356
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->setNodeValue(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;)V

    .line 1346
    :goto_0
    return-void

    .line 1363
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1365
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Composite nodes can\'t have values"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1368
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    goto :goto_0
.end method

.method public setPacketHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetHeader"    # Ljava/lang/String;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    .line 1224
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1130
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 5
    .param p1, "schemaNS"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/Object;
    .param p4, "options"    # Lcom/adobe/xmp/options/PropertyOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1109
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 1111
    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p4

    .line 1113
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 1115
    .local v0, "expPath":Lcom/adobe/xmp/impl/xpath/XMPPath;
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1116
    .local v1, "propNode":Lcom/adobe/xmp/impl/XMPNode;
    if-eqz v1, :cond_0

    .line 1118
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, p4, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    .line 1106
    return-void

    .line 1122
    :cond_0
    new-instance v2, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v3, "Specified property does not exist"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 1255
    return-void
.end method
