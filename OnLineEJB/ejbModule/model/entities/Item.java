package model.entities;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author alberto sales
 */
public class Item implements Serializable {
    
	private static final long serialVersionUID = 1L;
	public static final String ID = "id";
    public static final String NOME = "nome";
    public static final String DESCRICAO = "descricao";
    public static final String QTDE = "qtde";
    
    private int id;
    private String nome;
    private String descricao;
    private int qtde;

    public Item(Produtos p) {
        this.id = p.getId();
        this.nome = p.getNome();
        this.descricao = p.getDescricao();
        this.qtde = 1;
    }

    public void setCount(int count) {
        this.qtde= count;
    }

    public int getCount() {
        return qtde;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return nome;
    }

    public String getDescription() {
        return descricao;
    }

    public void setId(int id) {
        int oldId = id;
        this.id = id;
        propertySupport.firePropertyChange(ID, oldId, id);
    }

    public void setName(String name) {
        String oldName = name;
        this.nome = name;
        propertySupport.firePropertyChange(NOME, oldName, name);
    }

    public void setDescription(String description) {
        String oldDescription = description;
        this.descricao = description;
        propertySupport.firePropertyChange(DESCRICAO, oldDescription, description);
    }
    
    private PropertyChangeSupport propertySupport;
    
    public Item() {
        propertySupport = new PropertyChangeSupport(this);
    }
    
    public void addPropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) {
        propertySupport.removePropertyChangeListener(listener);
    }
    
}
